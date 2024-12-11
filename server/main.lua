ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('vehicleshop:server:buyVehicle')
AddEventHandler('vehicleshop:server:buyVehicle', function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if not data or not data.category or not data.spawnName then
        TriggerClientEvent('esx:showNotification', _source, 'Nieprawidłowe dane pojazdu.')
        return
    end

    local category = data.category:gsub('#', '')
    local vehicle = Config.Cars[category] and Config.Cars[category][data.spawnName]

    if not vehicle then
        TriggerClientEvent('esx:showNotification', _source, 'Ten pojazd nie jest dostępny.')
        return
    end

    local price = vehicle.price
    local label = vehicle.label

    if not price then
        TriggerClientEvent('esx:showNotification', _source, 'Cena pojazdu nie została ustalona.')
        return
    end

    if not label then
        label = data.spawnName
    end

    if xPlayer.getMoney() < price then
        TriggerClientEvent('esx:showNotification', _source, 'Nie masz wystarczającej ilości pieniędzy.')
        return
    end

    xPlayer.removeMoney(price)

    local vehicleProps = {
        model = data.spawnName,
        plate = generatePlate(),
        stored = true,
        garage = 'Prywatny',
    }

    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
        ['@owner'] = xPlayer.identifier,
        ['@plate'] = vehicleProps.plate,
        ['@vehicle'] = json.encode(vehicleProps),
        ['@type'] = 'car',
        ['@stored'] = vehicleProps.stored,
    }, function(rowsChanged)
        if rowsChanged > 0 then
            TriggerClientEvent('esx:showNotification', _source, 'Zakupiłeś pojazd: ~g~' .. label)
        else
            TriggerClientEvent('esx:showNotification', _source, 'Wystąpił problem podczas zakupu pojazdu.')
            xPlayer.addMoney(price)
        end
    end)
end)

function generatePlate()
    local plate = ""
    local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    for i = 1, 8 do
        local rand = math.random(1, #charset)
        plate = plate .. charset:sub(rand, rand)
    end

    local result = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {['@plate'] = plate})

    if #result > 0 then
        return generatePlate()
    else
        return plate
    end
end