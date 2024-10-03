-- Functions

local function IsBackEngine(vehModel)
    if BackEngineVehicles[vehModel] then return true else return false end
end

local function RepairVehicleFull(veh)
    if (IsBackEngine(GetEntityModel(veh))) then
        SetVehicleDoorOpen(veh, 5, false, false)
    else
        SetVehicleDoorOpen(veh, 4, false, false)
    end

    QBCore.Functions.Progressbar("repair_vehicle", Lang:t("progress.repair_veh"), math.random(80000, 100000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 1,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
        SetVehicleEngineHealth(veh, 1000.0)
        SetVehicleFixed(veh)
        for i = 0, 5 do
            SetVehicleTyreFixed(veh, i)
            TriggerEvent('qb-mechanicjob:client:TyreSync', veh, i)
        end
        if (IsBackEngine(GetEntityModel(veh))) then
            SetVehicleDoorShut(veh, 5, false)
        else
            SetVehicleDoorShut(veh, 4, false)
        end
        TriggerServerEvent('qb-mechanicjob:removeItem', "advancedrepairkit")
        QBCore.Functions.Notify(Lang:t("success.repaired_veh"))
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
        QBCore.Functions.Notify(Lang:t("error.failed_notification"), "error")
        if (IsBackEngine(GetEntityModel(veh))) then
            SetVehicleDoorShut(veh, 5, false)
        else
            SetVehicleDoorShut(veh, 4, false)
        end
    end)
end

local function RepairVehicleBody(veh)
    QBCore.Functions.Progressbar("repair_vehicleBody", Lang:t("progress.repair_vehicleBody"), math.random(70000, 80000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 1,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
        QBCore.Functions.Notify(Lang:t("success.repaired_veh"))
        SetVehicleFixed(veh)
        TriggerServerEvent('qb-mechanicjob:removeItem', "repairebodykit")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
        QBCore.Functions.Notify(Lang:t("error.failed_notification"), "error")
    end)
end

local function RepairVehicleTyres(veh)
    QBCore.Functions.Progressbar("repair_vehicleTyres", Lang:t("progress.repair_vehicleTyres"), math.random(50000, 70000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 1,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent('qb-mechanicjob:server:removetyrerepairkit', veh)
        QBCore.Functions.Notify(Lang:t("success.repaired_veh"))
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify(Lang:t("error.failed_notification"), "error")
    end)
end

local function CleanVehicle(veh)
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_MAID_CLEAN", 0, true)
    QBCore.Functions.Progressbar("cleaning_vehicle", Lang:t("progress.clean_veh"), math.random(10000, 20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t("success.cleaned_veh"))
        TriggerServerEvent('qb-mechanicjob:server:removewashingkit', veh)
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["cleaningkit"], "remove")
        ClearPedTasks(ped)
    end, function() -- Cancel
        QBCore.Functions.Notify(Lang:t("error.failed_notification"), "error")
        ClearPedTasks(ped)
    end)
end

-- Events

RegisterNetEvent('qb-mechanicjob:client:RepairVehicleFull', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if veh ~= nil and veh ~= 0 then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local vehpos = GetEntityCoords(veh)
        if #(pos - vehpos) < 5.0 and not IsPedInAnyVehicle(ped) then
            local drawpos = GetOffsetFromEntityInWorldCoords(veh, 0, 2.5, 0)
            if (IsBackEngine(GetEntityModel(veh))) then
                drawpos = GetOffsetFromEntityInWorldCoords(veh, 0, -2.5, 0)
            end
            if #(pos - drawpos) < 3.0 and not IsPedInAnyVehicle(ped) then
                RepairVehicleFull(veh)
            end
        else
            if #(pos - vehpos) > 4.9 then
                QBCore.Functions.Notify(Lang:t("error.out_range_veh"), "error")
            else
                QBCore.Functions.Notify(Lang:t("error.inside_veh"), "error")
            end
        end
    else
        QBCore.Functions.Notify(Lang:t("error.not_near_veh"), "error")
    end
end)

RegisterNetEvent('qb-mechanicjob:client:RepairVehicleBody', function()
    local veh, vehicleDistance = QBCore.Functions.GetClosestVehicle()
    if veh ~= nil and veh ~= 0 then
        local ped = PlayerPedId()
        if vehicleDistance < 3.0 and not IsPedInAnyVehicle(ped) then
            RepairVehicleBody(veh)
        else
            if vehicleDistance > 5 then
                QBCore.Functions.Notify(Lang:t("error.out_range_veh"), "error")
            else
                QBCore.Functions.Notify(Lang:t("error.inside_veh"), "error")
            end
        end
    else
        QBCore.Functions.Notify(Lang:t("error.not_near_veh"), "error")
    end
end)

RegisterNetEvent('qb-mechanicjob:client:RepaireVehicleTyres', function()
    local veh, vehicleDistance = QBCore.Functions.GetClosestVehicle()
    if veh ~= nil and veh ~= 0 then
        local ped = PlayerPedId()
        if vehicleDistance < 3.0 and not IsPedInAnyVehicle(ped, false) then
            RepairVehicleTyres(veh)
        else
            if vehicleDistance > 5 then
                QBCore.Functions.Notify(Lang:t("error.out_range_veh"), "error")
            else
                QBCore.Functions.Notify(Lang:t("error.inside_veh"), "error")
            end
        end
    else
        QBCore.Functions.Notify(Lang:t("error.not_near_veh"), "error")
    end
end)

RegisterNetEvent('qb-mechanicjob:client:SyncWash', function(veh)
    SetVehicleDirtLevel(veh, 0.1)
    SetVehicleUndriveable(veh, false)
    WashDecalsFromVehicle(veh, 1.0)
end)

RegisterNetEvent('qb-mechanicjob:client:TyreSync', function(veh, tyre)
    SetVehicleTyreFixed(veh, tyre)
    SetVehicleWheelHealth(veh, tyre, 1000.0)
end)

RegisterNetEvent('qb-mechanicjob:client:CleanVehicle', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if veh ~= nil and veh ~= 0 then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local vehpos = GetEntityCoords(veh)
        if #(pos - vehpos) < 3.0 and not IsPedInAnyVehicle(ped) then
            CleanVehicle(veh)
        end
    end
end)
