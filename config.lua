Config = {}

Config.Location = {
    {
        coords = vec4(-56.649227142334, -1098.6849365234, 26.422328948975, 28.940496444702),
        size = vec3(0.7, 0.5, 1.6),
        ped = 'ig_siemonyetarian',
        label = 'Sklep z pojazdami',
        sprite = 523,
        color = 0,
        scale = 0.7,
    },
}

Config.ShowVehicle = {
    coords = vec4(-43.946422576904, -1097.7775878906, 26.422327041626, 74.515174865723),
    camCoords = vec4(-48.208675384521, -1096.2923583984, 26.422325134277, 251.51898193359),
}

Config.Cars = {
    ['rowery'] = {
        ["bmx"] = {
            label = "Bmx",
            img = 'https://docs.fivem.net/vehicles/bmx.webp',
            price = 300,
            stats = {
                speed = 10,
                acceleration = 15,
                adhesion = 40,
                brakes = 30,
            },
        },
        ["tribike3"] = {
            label = "Tribike",
            img = 'https://docs.fivem.net/vehicles/tribike3.webp',
            price = 500,
            stats = {
                speed = 15,
                acceleration = 15,
                adhesion = 50,
                brakes = 30,
            },
        },
        ["cruiser"] = {
            label = "Cruiser",
            img = 'https://docs.fivem.net/vehicles/cruiser.webp',
            price = 150,
            stats = {
                speed = 15,
                acceleration = 15,
                adhesion = 40,
                brakes = 30,
            },
        },
        ["fixter"] = {
            label = "Fixter",
            img = 'https://docs.fivem.net/vehicles/fixter.webp',
            price = 400,
            stats = {
                speed = 15,
                acceleration = 15,
                adhesion = 40,
                brakes = 30,
            },
        },
    },
    ['motocykle'] = {
        ["Akuma"] = {
            label = "Akuma",
            img = 'https://docs.fivem.net/vehicles/akuma.webp',
            price = 15000,
            stats = {
                speed = 60,
                acceleration = 70,
                adhesion = 50,
                brakes = 45,
            },
        },
        ["Bagger"] = {
            label = "Bagger",
            img = 'https://docs.fivem.net/vehicles/bagger.webp',
            price = 5000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["bati"] = {
            label = "Bati",
            img = 'https://docs.fivem.net/vehicles/bati.webp',
            price = 14500,
            stats = {
                speed = 60,
                acceleration = 50,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["Daemon"] = {
            label = "Daemon",
            img = 'https://docs.fivem.net/vehicles/daemon.webp',
            price = 9500,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 40,
            },
        },
        ["Faggio"] = {
            label = "Faggio",
            img = 'https://docs.fivem.net/vehicles/faggio.webp',
            price = 3500,
            stats = {
                speed = 30,
                acceleration = 30,
                adhesion = 30,
                brakes = 30,
            },
        },
        ["Hakuchou"] = {
            label = "Hakuchou",
            img = 'https://docs.fivem.net/vehicles/hakuchou.webp',
            price = 2200,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 35,
            },
        },
        ["Hexer"] = {
            label = "Hexer",
            img = 'https://docs.fivem.net/vehicles/hexer.webp',
            price = 12000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 35,
            },
        },
        ["Innovation"] = {
            label = "Innovation",
            img = 'https://docs.fivem.net/vehicles/innovation.webp',
            price = 13200,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["Nemesis"] = {
            label = "Nemesis",
            img = 'https://docs.fivem.net/vehicles/nemesis.webp',
            price = 7500,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["Ruffian"] = {
            label = "Ruffian",
            img = 'https://docs.fivem.net/vehicles/ruffian.webp',
            price = 17300,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["Sanchez"] = {
            label = "Sanchez",
            img = 'https://docs.fivem.net/vehicles/sanchez.webp',
            price = 20000,
            stats = {
                speed = 60,
                acceleration = 60,
                adhesion = 40,
                brakes = 60,
            },
        },
        ["Vader"] = {
            label = "Vader",
            img = 'https://docs.fivem.net/vehicles/vader.webp',
            price = 20000,
            stats = {
                speed = 60,
                acceleration = 50,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["manchez3"] = {
            label = "Manchez",
            img = 'https://docs.fivem.net/vehicles/manchez.webp',
            price = 17500,
            stats = {
                speed = 50,
                acceleration = 60,
                adhesion = 40,
                brakes = 60,
            },
        },
        ["sanctus"] = {
            label = "Sanctus",
            img = 'https://docs.fivem.net/vehicles/sanctus.webp',
            price = 32500,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 30,
                brakes = 60,
            },
        },
        ["ratbike"] = {
            label = "Ratbike",
            img = 'https://docs.fivem.net/vehicles/ratbike.webp',
            price = 10500,
            stats = {
                speed = 40,
                acceleration = 40,
                adhesion = 50,
                brakes = 40,
            },
        },
    },
    ['muscle'] = {
        ["dukes"] = {
            label = "Dukes",
            img = 'https://docs.fivem.net/vehicles/dukes.webp',
            price = 67000,
            stats = {
                speed = 50,
                acceleration = 30,
                adhesion = 55,
                brakes = 75,
            },
        },
        ["yosemite2"] = {
            label = "Yosemite",
            img = 'https://docs.fivem.net/vehicles/yosemite2.webp',
            price = 100000,
            stats = {
                speed = 45,
                acceleration = 25,
                adhesion = 10,
                brakes = 55,
            },
        },
        ["dominator8"] = {
            label = "Dominator",
            img = 'https://docs.fivem.net/vehicles/dominator8.webp',
            price = 160000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 60,
                brakes = 70,
            },
        },
        ["faction2"] = {
            label = "Faction",
            img = 'https://docs.fivem.net/vehicles/faction2.webp',
            price = 47000,
            stats = {
                speed = 60,
                acceleration = 50,
                adhesion = 60,
                brakes = 50,
            },
        },
        ["faction3"] = {
            label = "Faction 2",
            img = 'https://docs.fivem.net/vehicles/faction3.webp',
            price = 78000,
            stats = {
                speed = 35,
                acceleration = 30,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["peyote2"] = {
            label = "Peyote",
            img = 'https://docs.fivem.net/vehicles/peyote2.webp',
            price = 70000,
            stats = {
                speed = 45,
                acceleration = 30,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["tampa"] = {
            label = "Tampa",
            img = 'https://docs.fivem.net/vehicles/tampa.webp',
            price = 60000,
            stats = {
                speed = 50,
                acceleration = 40,
                adhesion = 30,
                brakes = 50,
            },
        },
        ["vamos"] = {
            label = "Vamos",
            img = 'https://docs.fivem.net/vehicles/vamos.webp',
            price = 38000,
            stats = {
                speed = 60,
                acceleration = 50,
                adhesion = 40,
                brakes = 60,
            },
        },
        ["virgo2"] = {
            label = "Virgo",
            img = 'https://docs.fivem.net/vehicles/virgo2.webp',
            price = 41000,
            stats = {
                speed = 50,
                acceleration = 30,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["voodoo"] = {
            label = "Voodoo",
            img = 'https://docs.fivem.net/vehicles/voodoo.webp',
            price = 52000,
            stats = {
                speed = 50,
                acceleration = 30,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["tulip"] = {
            label = "Tulip",
            img = 'https://docs.fivem.net/vehicles/tulip.webp',
            price = 39000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["buccaneer2"] = {
            label = "buccaneer",
            img = 'https://docs.fivem.net/vehicles/buccaneer2.webp',
            price = 75000,
            stats = {
                speed = 50,
                acceleration = 60,
                adhesion = 30,
                brakes = 60,
            },
        },
    },
    ['sportowe'] = {
        ["comet7"] = {
            label = "Comet",
            img = 'https://docs.fivem.net/vehicles/comet7.webp',
            price = 420000,
            stats = {
                speed = 70,
                acceleration = 60,
                adhesion = 60,
                brakes = 80,
            },
        },
        ["cypher"] = {
            label = "Cypher",
            img = 'https://docs.fivem.net/vehicles/cypher.webp',
            price = 310000,
            stats = {
                speed = 70,
                acceleration = 50,
                adhesion = 60,
                brakes = 70,
            },
        },
        ["flashgt"] = {
            label = "Flashgt",
            img = 'https://docs.fivem.net/vehicles/flashgt.webp',
            price = 425000,
            stats = {
                speed = 80,
                acceleration = 70,
                adhesion = 70,
                brakes = 80,
            },
        },
        ["jester3"] = {
            label = "Jester",
            img = 'https://docs.fivem.net/vehicles/jester3.webp',
            price = 820000,
            stats = {
                speed = 90,
                acceleration = 80,
                adhesion = 80,
                brakes = 70,
            },
        },
        ["sentinel4"] = {
            label = "sentinel4",
            img = 'https://docs.fivem.net/vehicles/sentinel4.webp',
            price = 210000,
            stats = {
                speed = 70,
                acceleration = 50,
                adhesion = 50,
                brakes = 60,
            },
        },
    },
    ['suv'] = {
        ["rebla"] = {
            label = "Rebla",
            img = 'https://docs.fivem.net/vehicles/rebla.webp',
            price = 125000,
            stats = {
                speed = 70,
                acceleration = 60,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["iwagen"] = {
            label = "Iwagen",
            img = 'https://docs.fivem.net/vehicles/iwagen.webp',
            price = 77000,
            stats = {
                speed = 60,
                acceleration = 90,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["seminole2"] = {
            label = "Seminole",
            img = 'https://docs.fivem.net/vehicles/seminole2.webp',
            price = 71000,
            stats = {
                speed = 50,
                acceleration = 40,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["contender"] = {
            label = "Contender",
            img = 'https://docs.fivem.net/vehicles/contender.webp',
            price = 395000,
            stats = {
                speed = 60,
                acceleration = 60,
                adhesion = 50,
                brakes = 50,
            },
        },
        ["Baller2"] = {
            label = "Baller",
            img = 'https://docs.fivem.net/vehicles/baller2.webp',
            price = 89000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 55,
            },
        },
    },
    ['sedan'] = {
        ["cinquemila"] = {
            label = "Cinquemila",
            img = 'https://docs.fivem.net/vehicles/cinquemila.webp',
            price = 170000,
            stats = {
                speed = 70,
                acceleration = 40,
                adhesion = 60,
                brakes = 50,
            },
        },
        ["ingot"] = {
            label = "Ingot",
            img = 'https://docs.fivem.net/vehicles/ingot.webp',
            price = 42000,
            stats = {
                speed = 40,
                acceleration = 40,
                adhesion = 40,
                brakes = 40,
            },
        },
        ["rhinehart"] = {
            label = "Rhinehart",
            img = 'https://docs.fivem.net/vehicles/rhinehart.webp',
            price = 98000,
            stats = {
                speed = 70,
                acceleration = 60,
                adhesion = 50,
                brakes = 60,
            },
        },
        ["tailgater2"] = {
            label = "Tailgater",
            img = 'https://docs.fivem.net/vehicles/tailgater2.webp',
            price = 148000,
            stats = {
                speed = 70,
                acceleration = 60,
                adhesion = 60,
                brakes = 70,
            },
        },
    },
    ['terenowe'] = {
        ["draugur"] = {
            label = "Draugur",
            img = 'https://docs.fivem.net/vehicles/draugur.webp',
            price = 365000,
            stats = {
                speed = 60,
                acceleration = 50,
                adhesion = 70,
                brakes = 40,
            },
        },
        ["bifta"] = {
            label = "Bifta",
            img = 'https://docs.fivem.net/vehicles/bifta.webp',
            price = 88000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["caracara2"] = {
            label = "Caracara",
            img = 'https://docs.fivem.net/vehicles/caracara2.webp',
            price = 415000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["dubsta3"] = {
            label = "Dubsta",
            img = 'https://docs.fivem.net/vehicles/dubsta3.webp',
            price = 390000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 40,
            },
        },
        ["mesa3"] = {
            label = "Mesa",
            img = 'https://docs.fivem.net/vehicles/mesa3.webp',
            price = 320000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["trophytruck"] = {
            label = "Trophytruck",
            img = 'https://docs.fivem.net/vehicles/trophytruck.webp',
            price = 280000,
            stats = {
                speed = 60,
                acceleration = 80,
                adhesion = 50,
                brakes = 30,
            },
        },
        ["winky"] = {
            label = "Winky",
            img = 'https://docs.fivem.net/vehicles/winky.webp',
            price = 105000,
            stats = {
                speed = 30,
                acceleration = 30,
                adhesion = 40,
                brakes = 30,
            },
        },
    },
    ['van'] = {
        ["minivan2"] = {
            label = "Minivan",
            img = 'https://docs.fivem.net/vehicles/minivan2.webp',
            price = 52300,
            stats = {
                speed = 40,
                acceleration = 40,
                adhesion = 30,
                brakes = 50,
            },
        },
        ["moonbeam"] = {
            label = "Moonbeam",
            img = 'https://docs.fivem.net/vehicles/moonbeam.webp',
            price = 73000,
            stats = {
                speed = 35,
                acceleration = 40,
                adhesion = 70,
                brakes = 50,
            },
        },
        ["camper"] = {
            label = "Camper",
            img = 'https://docs.fivem.net/vehicles/camper.webp',
            price = 81000,
            stats = {
                speed = 30,
                acceleration = 20,
                adhesion = 30,
                brakes = 40,
            },
        },
        ["journey"] = {
            label = "Journey",
            img = 'https://docs.fivem.net/vehicles/journey.webp',
            price = 38000,
            stats = {
                speed = 20,
                acceleration = 20,
                adhesion = 30,
                brakes = 30,
            },
        },
        ["pony2"] = {
            label = "Pony",
            img = 'https://docs.fivem.net/vehicles/pony2.webp',
            price = 57500,
            stats = {
                speed = 50,
                acceleration = 40,
                adhesion = 30,
                brakes = 40,
            },
        },
        ["rumpo3"] = {
            label = "Rumpo",
            img = 'https://docs.fivem.net/vehicles/rumpo3.webp',
            price = 145000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["youga2"] = {
            label = "Youga",
            img = 'https://docs.fivem.net/vehicles/youga2.webp',
            price = 57000,
            stats = {
                speed = 30,
                acceleration = 30,
                adhesion = 40,
                brakes = 30,
            },
        },
    },
    ['kompakty'] = {
        ["dilettante"] = {
            label = "Dilettante",
            img = 'https://docs.fivem.net/vehicles/dilettante.webp',
            price = 37000,
            stats = {
                speed = 40,
                acceleration = 60,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["rhapsody"] = {
            label = "Rhapsody",
            img = 'https://docs.fivem.net/vehicles/rhapsody.webp',
            price = 27400,
            stats = {
                speed = 40,
                acceleration = 40,
                adhesion = 50,
                brakes = 40,
            },
        },
        ["issi2"] = {
            label = "Issi",
            img = 'https://docs.fivem.net/vehicles/issi2.webp',
            price = 34500,
            stats = {
                speed = 50,
                acceleration = 40,
                adhesion = 40,
                brakes = 30,
            },
        },
        ["kanjo"] = {
            label = "Kanjo",
            img = 'https://docs.fivem.net/vehicles/kanjo.webp',
            price = 32500,
            stats = {
                speed = 50,
                acceleration = 20,
                adhesion = 30,
                brakes = 30,
            },
        },
    },
    ['klasyki'] = {},
    ['coupe'] = {
        ["oracle2"] = {
            label = "Oracle",
            img = 'https://docs.fivem.net/vehicles/oracle2.webp',
            price = 62000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 40,
                brakes = 50,
            },
        },
        ["previon"] = {
            label = "Previon",
            img = 'https://docs.fivem.net/vehicles/previon.webp',
            price = 82000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 40,
                brakes = 40,
            },
        },
        ["oracle"] = {
            label = "Oracle",
            img = 'https://docs.fivem.net/vehicles/oracle.webp',
            price = 62000,
            stats = {
                speed = 60,
                acceleration = 40,
                adhesion = 60,
                brakes = 40,
            },
        },
        ["postlude"] = {
            label = "Postlude",
            img = 'https://docs.fivem.net/vehicles/postlude.webp',
            price = 32000,
            stats = {
                speed = 50,
                acceleration = 50,
                adhesion = 30,
                brakes = 50,
            },
        },
        ["felon"] = {
            label = "Felon",
            img = 'https://docs.fivem.net/vehicles/felon.webp',
            price = 68200,
            stats = {
                speed = 50,
                acceleration = 40,
                adhesion = 40,
                brakes = 40,
            },
        },
    },
}