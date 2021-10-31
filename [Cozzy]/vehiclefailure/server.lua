XD = nil
TriggerEvent('XD:GetObject', function(obj) XD = obj end)

XD.Commands.Add("repair", "Repair a vehicle", {}, false, function(source, args)
    TriggerClientEvent('iens:repaira', source)
    TriggerClientEvent('vehiclemod:client:fixEverything', source)
end, "admin")

XD.Functions.CreateUseableItem("repairkit", function(source, item)
    local Player = XD.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("vehiclefailure:client:RepairVehicle", source)
    end
end)

XD.Functions.CreateUseableItem("cleaningkit", function(source, item)
    local Player = XD.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("vehiclefailure:client:CleanVehicle", source)
    end
end)

XD.Functions.CreateUseableItem("advancedrepairkit", function(source, item)
    local Player = XD.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("vehiclefailure:client:RepairVehicleFull", source)
    end
end)

RegisterServerEvent('xd_vehiclefailure:removeItem')
AddEventHandler('xd_vehiclefailure:removeItem', function(item)
    local src = source
    local ply = XD.Functions.GetPlayer(src)
    ply.Functions.RemoveItem(item, 1)
end)

RegisterServerEvent('vehiclefailure:server:removewashingkit')
AddEventHandler('vehiclefailure:server:removewashingkit', function(item)
    local src = source
    local ply = XD.Functions.GetPlayer(src)
    ply.Functions.RemoveItem("cleaningkit", 1)
end)

