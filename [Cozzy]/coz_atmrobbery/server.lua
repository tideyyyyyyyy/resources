-------------------------------------
------- Created by Hamza#1234 -------
------------------------------------- 
local ESX = nil

local CoolDownTimerATM = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Event for adding cooldown to player:
RegisterServerEvent("esx_atmRobbery:CooldownATM")
AddEventHandler("esx_atmRobbery:CooldownATM",function()
	local xPlayer = ESX.GetPlayerFromId(source)
	table.insert(CoolDownTimerATM,{CoolDownTimerATM = GetPlayerIdentifier(source), time = ((Config.RobCooldown * 60000))})
end)

-- Cooldown timer thread:
Citizen.CreateThread(function() -- do not touch this thread function!
	while true do
	Citizen.Wait(1000)
		for k,v in pairs(CoolDownTimerATM) do
			if v.time <= 0 then
				RemoveCooldownTimer(v.CoolDownTimerATM)
			else
				v.time = v.time - 1000
			end
		end
	end
end)

-- Callback to get cooldown:
ESX.RegisterServerCallback("esx_atmRobbery:isRobbingPossible",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local waitTimer = GetTimeForCooldown(GetPlayerIdentifier(source))
	if not CheckCooldownTime(GetPlayerIdentifier(source)) then
		cb(false)
	else
		TriggerClientEvent("esx:showNotification",source,string.format("You can rob again in: ~b~%s~s~ minutes",waitTimer))
		cb(true)
	end
end)

-- Callback to get police count:
ESX.RegisterServerCallback("esx_atmRobbery:getOnlinePoliceCount",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local Players = ESX.GetPlayers()
	local policeOnline = 0
	for i = 1, #Players do
		local xPlayer = ESX.GetPlayerFromId(Players[i])
		if xPlayer["job"]["name"] == "police" then
			policeOnline = policeOnline + 1
		end
	end
	if policeOnline >= Config.RequiredPolice then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('esx:showNotification', source, "There is ~r~not~s~ enough ~b~police~s~ in the ~y~city~s~")
	end
end)

-- Callback to get hacker device count:
ESX.RegisterServerCallback("esx_atmRobbery:getHackerDevice",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getInventoryItem("hackerDevice").count >= 1 then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('esx:showNotification', source, "You need a ~y~Hacking Device~s~ to hack the ATM!")
	end
end)

-- Event to reward after successfull robbery
RegisterServerEvent("esx_atmRobbery:success")
AddEventHandler("esx_atmRobbery:success",function()
	local xPlayer = ESX.GetPlayerFromId(source)
    local reward = math.random(Config.MinReward,Config.MaxReward)
	if Config.EnableDirtyCash then
		xPlayer.addAccountMoney('black_money', tonumber(reward))
		TriggerClientEvent("esx:showNotification",source,"You received ~r~$"..reward.. "~s~ dirty cash~s~")
	else
		xPlayer.addMoney(reward)
		TriggerClientEvent("esx:showNotification",source,"You received ~r~$"..reward.. "~s~ cash~s~")
	end
end)

-- Trigger message and blip for Police:
RegisterServerEvent('esx_atmRobbery:PoliceNotify')
AddEventHandler('esx_atmRobbery:PoliceNotify', function(targetCoords, streetName)
	TriggerClientEvent('esx_atmRobbery:outlawNotify', -1,string.format(Config.DispatchMessage,streetName))
	TriggerClientEvent('esx_atmRobbery:OutlawBlipSettings', -1, targetCoords)
end)

-- Do not touch:
function RemoveCooldownTimer(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			table.remove(CoolDownTimerATM,k)
		end
	end
end
function GetTimeForCooldown(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			return math.ceil(v.time/60000)
		end
	end
end
function CheckCooldownTime(source)
	for k,v in pairs(CoolDownTimerATM) do
		if v.CoolDownTimerATM == source then
			return true
		end
	end
	return false
end
