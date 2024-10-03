Config = {}
Config.Locale = 'fr'
Config.Debug = false

Config.blips = {
    ['Auto Exotic'] = {
        coords = vector3(549.53, -184.44, 54.51),
        sprite = 446,
        scale = 0.8,
        color = 3
    },
    ["Véhicules d'occasion"] = {
        coords = vector3(540.29, -268.50, 50.02),
        sprite = 523,
        scale = 0.8,
        color = 17
    }
}

Config.duty = {
    autoexotic = {
        coords = vector4(535.37, -166.50, 54.51, 226.81),
        pedModel = 'mp_m_waremech_01',
    }
}

Config.stash = {
    autoexotic = {
        {
            coords = vector3(560.81, -169.34, 57.59),
            length = 0.5,
            width = 2.5,
            heading = 270,
            minZ = 57.00,
            maxZ = 58.40,
        },
        {
            coords = vector3(560.61, -183.29, 54.17),
            length = 0.5,
            width = 7.5,
            heading = 270.5,
            minZ = 53.17,
            maxZ = 56,
        },
    },
}

Config.clothingRoomsZones = {
    autoexotic = {
        {
            coords = vector3(539.34, -167.07, 54.51),
            length = 3,
            width = 3,
            heading = 270,
            minZ = 53.51,
            maxZ = 55.51,
        },
    },
}

Config.clothingRoomsOutfit = {
    ['autoexotic'] = {
        [0] = {
            outfitLabel = 'Stagiaire',
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 203, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 36, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 617, texture = 25, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 131, texture = 11, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 150, texture = 4, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 203, texture = 3, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 36, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 617, texture = 25, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 131, texture = 11, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 150, texture = 4, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
        },
        [1] = {
            outfitLabel = 'Mécano',
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 23, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 18, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 369, texture = 17, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 138, texture = 23, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 113, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask

                }
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 15, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 20, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 336, texture = 17, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 139, texture = 23, defaultItem = 0, defaultTexture = 0}, -- Pants 
                    ['shoes'] = {item = 86, texture = 4, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
        },
        [2] = {
            outfitLabel = 'Chef-Mécano',
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 158, texture = 1, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 18, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 496, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 138, texture = 23, defaultItem = 0, defaultTexture = 0}, -- Pants
                    ['shoes'] = {item = 113, texture = 3, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask

                }
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 52, texture = 0, defaultItem = 0, defaultTexture = 0}, -- T Shirt
                    ['torso2'] = {item = 0, texture =0, defaultItem = 0, defaultTexture = 0}, -- Jacket
                    ['arms'] = {item = 28, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Arms
                    ['decals'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Badge
                    ['vest'] = {item = 323, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Body Vest
                    ['pants'] = {item = 139, texture = 23, defaultItem = 0, defaultTexture = 0}, -- Pants 
                    ['shoes'] = {item = 86, texture = 4, defaultItem = 0, defaultTexture = 0}, -- Shoes
                    ['accessory'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Neck Accessory
                    ['bag'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Bag
                    ['hat'] = {item = -1, texture = -1, defaultItem = 0, defaultTexture = 0}, -- Hat
                    ['glass'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0}, -- Glasses
                    ['mask'] = {item = 0, texture = 0, defaultItem = 0, defaultTexture = 0} -- Mask
                }
            },
        },
    }
}

Config.bossMenu = {
    autoexotic = {
        {
            coords = vector3(558.28, -198.61, 57.95),
            length = 1.3,
            width = 2.7,
            heading = 92,
            minZ = 56.95,
            maxZ = 58.50,
        },
    },
}

Config.radialMenu = {
    ["autoexotic"] = {
        {
            id = "entreprise",
            title = "Entreprise",
            icon = "shop",
            items = {
                {
                    id = 'openStore',
                    title = 'Ouvrire',
                    icon = 'door-open',
                    type = 'client',
                    event = 'togolo_lib:client:showAdvancedNotification',
                    params = {
                        global = true,
                        message = 'L\'autoExotic est désormais ouverte',
                        sender = 'Auto Exotic',
                        subject = 'Ouvert',
                        textureDict = 'CHAR_ACTING_UP',
                        iconType = 2,
                        color = 18,
                    },
                    shouldClose = true
                },
                {
                    id = 'closeStore',
                    title = 'Fermer',
                    icon = 'door-closed',
                    type = 'client',
                    event = 'togolo_lib:client:showAdvancedNotification',
                    params = {
                        global = true,
                        message = 'L\'autoExotic est désormais fermer !',
                        sender = 'Auto Exotic',
                        subject = 'Fermer',
                        textureDict = 'CHAR_ACTING_UP',
                        iconType = 2,
                        color = 6,
                    },
                    shouldClose = true
                },
            },
        },
        {
            id = "job",
            title = "Job",
            icon = "screwdriver-wrench",
            items = {
                {
                    id = 'towvehicle',
                    title = 'Remorquer le véhicule',
                    icon = 'truck-pickup',
                    type = 'client',
                    event = 'tow:client:TowVehicle',
                    shouldClose = true
                },
                -- {
                --     id = 'fixvehicle',
                --     title = 'Réparer le véhicule',
                --     icon = 'wrench',
                --     type = 'client',
                --     event = 'qb-mechanicjob:client:RepairVehicleFull',
                --     shouldClose = true
                -- },
                {
                    id = 'statsvehicle',
                    title = 'Stats véhicule',
                    icon = 'chart-simple',
                    type = 'command',
                    event = 'vehstats',
                    shouldClose = true
                },
                {
                    id = 'impoundvehicle',
                    title = 'Mise en fourrière',
                    icon = 'triangle-exclamation',
                    type = 'command',
                    event = 'fourriere',
                    shouldClose = true
                },
                {
                    id = 'emote',
                    title = 'Emote',
                    icon = 'list',
                    items = {
                        {
                            id = 'tablet',
                            title = 'Tablette',
                            icon = 'tablet',
                            type = 'command',
                            event = 'e tablet',
                            shouldClose = true
                        },                        {
                            id = 'mechanic1',
                            title = 'Réparer le moteur',
                            icon = 'wrench',
                            type = 'command',
                            event = 'e mechanic',
                            shouldClose = true
                        },
                        {
                            id = 'mechanic2',
                            title = 'Réparer le moteur 2',
                            icon = 'wrench',
                            type = 'command',
                            event = 'e mechanic2',
                            shouldClose = true
                        },
                        {
                            id = 'mechanic3',
                            title = 'Allongé sour le véhicule',
                            icon = 'wrench',
                            type = 'command',
                            event = 'e mechanic3',
                            shouldClose = true
                        },
                        {
                            id = 'mechanic4',
                            title = 'Démonter la roue',
                            icon = 'wrench',
                            type = 'command',
                            event = 'e mechanic4',
                            shouldClose = true
                        },
                        {
                            id = 'mechanic5',
                            title = 'Debout sous le véhicule',
                            icon = 'wrench',
                            type = 'command',
                            event = 'e mechanic5',
                            shouldClose = true
                        },
                    }
                },
            },
        }
    },
}

Config.boombox = {
    -- autoexotic = {
    --     {
    --         coords = vector3(977.30, -89.90, 75.05),
    --         length = 0.5,
    --         width = 1.6,
    --         heading = 224,
    --         minZ = 75.05,
    --         maxZ = 75.35,
    --     },
    -- },
}
