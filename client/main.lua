local Client = {
    Data = {},
    CharacterCam = nil,
    SelectVehicle = nil,
    IsOpen = false,
}

local function CreateBlip(id, label, sprite, color, scale, coords, title, category)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(title or label)
    EndTextCommandSetBlipName(blip)
    
    Client.Data[id] = {
        blip = blip,
        category = category,
    }
end

local function SpawnPed(id, model, coords, options, networked, dynamic)
    local modelHash = GetHashKey(model)
    
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(10)
    end

    local ped = CreatePed(4, modelHash, coords.x, coords.y, coords.z, coords.w, networked, dynamic)
    SetEntityHeading(ped, coords.w)
    FreezeEntityPosition(ped, options.FreezeEntityPosition or false)
    SetEntityInvincible(ped, options.SetEntityInvincible or false)
    SetBlockingOfNonTemporaryEvents(ped, options.SetBlockingOfNonTemporaryEvents or false)

    Client.Data[id] = {
        ped = ped,
    }
end

Client.MainThread = function()
    for i = 1, #Config.Location do
        local conf = Config.Location[i]

        CreateBlip("haze-vehicleshop:" .. i, conf.label, conf.sprite, conf.color, conf.scale, conf.coords, conf.label, 'gielda')

        SpawnPed("haze-vehicleshop:" .. i, conf.ped, vec4(conf.coords.x, conf.coords.y, conf.coords.z - 0.99, conf.coords.w), {
            FreezeEntityPosition = true,
            SetEntityInvincible = true,
            SetBlockingOfNonTemporaryEvents = true,
        }, false, false)
    
        exports.ox_target:addBoxZone({
            coords = vec3(conf.coords.x, conf.coords.y, conf.coords.z),
            size = conf.size,
            rotation = conf.coords.w,
            debug = ESX.GetConfig().EnableDebug,
            options = {
                {
                    icon = "fa-solid fa-car",
                    label = 'Sklep',
                    onSelect = Client.OpenShop,
                    distance = 3,
                },
            }
        })
    end
end

Client.OpenShop = function()
    SendNUIMessage({
        action = 'openui',
        vehicle = Config.Cars,
    })
    SetNuiFocus(true, true)
    Client.SetupCam()
    Client.IsOpen = true
    TriggerEvent('haze-hud:toggleUi', false)
end

Client.CloseShop = function()
    SendNUIMessage({
        action = 'closeui',
    })
    SetNuiFocus(false, false)
    Client.IsOpen = false
    TriggerEvent('haze-hud:toggleUi', true)

    SetCamActive(Client.CharacterCam, false)
    RenderScriptCams(false, true, 500, true, true)
    Client.CharacterCam = nil
    ESX.Game.DeleteVehicle(Client.SelectVehicle)
end

Client.BuyCarNuiCallback = function(data)
    TriggerServerEvent('vehicleshop:server:buyVehicle', data)
end

Client.ShowCarNuiCallback = function(data) 
    local vehicleCoords = Config.ShowVehicle.coords

    if DoesEntityExist(Client.SelectVehicle) then
        ESX.Game.DeleteVehicle(Client.SelectVehicle)
    end

    local category = data.category:gsub('#', '')
    local car = Config.Cars[category][data.spawnName]

    ESX.Game.SpawnLocalVehicle(data.spawnName, vec3(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z), vehicleCoords.w, function(vehicle)
        repeat 
            Wait(100)
        until DoesEntityExist(vehicle)
        
        if Client.IsOpen then
            Client.SelectVehicle = vehicle
        else
            ESX.Game.DeleteVehicle(vehicle)
        end
    end)

    repeat 
        Wait(100)
    until not DoesEntityExist(vehicle)
end

Client.SetupCam = function()
    local playerPed = PlayerPedId()
    local camCoords = Config.ShowVehicle.camCoords
    Client.CharacterCam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)

    SetCamActive(Client.CharacterCam, true)
    RenderScriptCams(true, true, 500, true, true)

    SetCamRot(Client.CharacterCam, 0.0, 0.0, 270.0, true)
    SetCamCoord(Client.CharacterCam, camCoords.x, camCoords.y, camCoords.z)
    PointCamAtCoord(Client.CharacterCam, camCoords.x, camCoords.y, camCoords.z)
end

Client.BuyVehicleCallback = function(cb, vehicleName)
    if Client.IsOpen then
        Client.CloseShop()
    end

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    ESX.Game.SpawnLocalVehicle(vehicleName, vector3(playerCoords.x, playerCoords.y, playerCoords.z + 30), 0, function(vehicle)
        if not DoesEntityExist(vehicle) then 
            return cb(false)
        end

        TaskWarpPedIntoVehicle(playerPed, vehicle, -1)

        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        ESX.Game.DeleteVehicle(vehicle)
    
        cb(vehicleProps)
    end)
end

Client.ChangeCam = function(data)
    SetEntityHeading(Client.SelectVehicle, tonumber(data.val))
end

Client.GetVehicleLabel = function(cb, vehicleModel)
    cb({
        label = GetDisplayNameFromVehicleModel(vehicleModel),
    })
end

Client.GetPropertyCallback = function(cb)
    local playerPed = PlayerPedId()
    local playerVehicle = GetVehiclePedIsIn(playerPed, false)

    if playerVehicle == 0 then
        cb(false)
        return ESX.ShowNotification('Musisz być w pojeździe')
    end

    local vehicleProps = ESX.Game.GetVehicleProperties(playerVehicle)
    local label = GetDisplayNameFromVehicleModel(vehicleProps.model)
    ESX.Game.DeleteVehicle(playerVehicle)

    cb(vehicleProps, label)
end

ESX.RegisterClientCallback("vehicleshop:callback:client:buyVehicle", Client.BuyVehicleCallback)
ESX.RegisterClientCallback("vehicleshop:callback:client:getProperty", Client.GetPropertyCallback)
ESX.RegisterClientCallback("vehicleshop:callback:client:getVehicleLabel", Client.GetVehicleLabel)
RegisterNUICallback('buyCar', Client.BuyCarNuiCallback)
RegisterNUICallback('showCar', Client.ShowCarNuiCallback)
RegisterNUICallback('closeUi', Client.CloseShop)
RegisterNUICallback('changeCam', Client.ChangeCam)

CreateThread(Client.MainThread)

RegisterNetEvent('woro-hud:updateColor', function(data)
    SendNUIMessage({action = "updateColor", data = data})
end)
