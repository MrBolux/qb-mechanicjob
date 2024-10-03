local QBCore = exports['qb-core']:GetCoreObject()

-- Items
QBCore.Functions.CreateUseableItem("advancedrepairkit", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicjob:client:RepairVehicleFull", source)
    end
end)

QBCore.Functions.CreateUseableItem("repairebodykit", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicjob:client:RepairVehicleBody", source)
    end
end)

QBCore.Functions.CreateUseableItem("tyrerepairkit", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicjob:client:RepaireVehicleTyres", source)
    end
end)

QBCore.Functions.CreateUseableItem("cleaningkit", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicjob:client:CleanVehicle", source)
    end
end)

-- Events
RegisterNetEvent('qb-mechanicjob:server:removewashingkit', function(veh)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.RemoveItem("cleaningkit", 1)
    TriggerClientEvent('qb-mechanicjob:client:SyncWash', -1, veh)
end)

RegisterNetEvent('qb-mechanicjob:server:removetyrerepairkit', function(veh)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.RemoveItem("tyrerepairkit", 1)
    for i = 0, 5 do
        TriggerClientEvent('qb-mechanicjob:client:TyreSync', -1, veh, i)
    end
end)

RegisterNetEvent('qb-mechanicjob:removeItem', function(item)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.RemoveItem(item, 1)
end)