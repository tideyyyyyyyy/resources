ESX = nil   
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

local isJudge = false
local isPolice = false
local isMedic = false
local isDoctor = false
local isNews = false
local isDead = false
local isInstructorMode = false
local myJob = "unemployed"
local isHandcuffed = false
local isHandcuffedAndWalking = false
local hasOxygenTankOn = false
local gangNum = 0
local cuffStates = {}


rootMenuConfig =  {
    

    {
        id = "general",
        displayName = "General",
        icon = "#globe-europe",
        enableMenu = function()
            return not isDead
        end,
        subMenus = {"general:emotes", "general:bills", 'cuffing:searchDeath'}
    },

 

    {
        id = "animations",
        displayName = "Walks",
        icon = "#walking",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "animations:brave", "animations:hurry", "animations:business", "animations:tipsy", "animations:injured","animations:tough", "animations:default", "animations:hobo", "animations:money", "animations:swagger", "animations:shady", "animations:maneater", "animations:chichi", "animations:sassy", "animations:sad", "animations:posh", "animations:alien" }
    },

    {
        id = "expressions",
        displayName = "Faces",
        icon = "#expressions",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "expressions:normal", "expressions:drunk", "expressions:angry", "expressions:dumb", "expressions:electrocuted", "expressions:grumpy", "expressions:happy", "expressions:injured", "expressions:joyful", "expressions:mouthbreather", "expressions:oneeye", "expressions:shocked", "expressions:sleeping", "expressions:smug", "expressions:speculative", "expressions:stressed", "expressions:sulking", "expressions:weird", "expressions:weird2"}
    },

    {
        id = "mechanic",
        displayName = "Mechanic",
        icon = "#mechanic",
        enableMenu =function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and (Data.job.name == "mechanic" or Data.job.name == "tuner"))
        end,
        subMenus = { "police:impound", "mechanic:bill", "mechanic:repair","mechanic:hijack" }
    },

    {
        id = "police",
        displayName = "Police",
        icon = "#police",
        enableMenu =function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name == "police" or Data.job.name == "ambulance")
        end,
        subMenus = { "police:bill", "police:putinvehicle", "police:outofvehicle", "police:impound", "police:cuff", "police:uncuff", "police:drag", "mechanic:hijack"}
    },
    
    {
        id = "police-check",
        displayName = "Police Check",
        icon = "#police-check",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name == "police")
        end,
        subMenus = {"police:checkbank", "police:search", 'police:mdt', "police:bills", "police:cone", "police:barier", "police:light", 'police:deleteObject' }
    },

    {
        id = "gang",
        displayName = 'Mafia',
        icon = "#gang",
        enableMenu =function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and (Data.job.name == "biton" or Data.job.name == "peaky" or Data.job.name == "bloods" or Data.job.name == "blackmarket" ))
        end,
        subMenus = { "police:putinvehicle", "police:outofvehicle",  "police:cuff", "police:uncuff", "police:drag","mechanic:hijack", "cuffing:steal"}
    },

    --[[{
        id = "police-objects",
        displayName = "Police Objects",
        icon = "#police-objects",
        enableMenu =function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name == "police")
        end,
        subMenus = { "police:cone", "police:barier", "police:light", 'police:deleteObject'}
    },]]--


    {
        id = "sell_vehicle",
        displayName = "Sell Vehicle",
        icon = "#vehicle-sell",
        enableMenu =function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId()))
        end,
        functionName = "MF_VehSales:SellCar"
    },


    {
        id = "ems",
        displayName = "Ambulance",
        icon = "#ems-ambulance",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name == "ambulance")
        end,
        subMenus = { "ems:bill", "ems:revive", 'ems:heal', "police:putinvehicle", "police:outofvehicle", 'police:drag'  }
    }
}

newSubMenus = {
    ['general:emotes'] = {
        title = "Animations",
        icon = "#emotes",
        functionName = "emotes:OpenMenu"
    },

    ['general:bills'] = {
        title = "Bills",
        icon = "#police-bills",
        functionName = "esx_billing:openMenu"
    },

    -- Cuff
    ['cuffing:searchDeath'] = {
        title = "Search Body",
        icon = "#cuffs-rob",
        functionName = "robPlayer",
    },

    ['cuffing:drag'] = {
        title = "Drag",
        icon = "#cuffs-drag",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name ~= "ambulance" and Data.job.name ~= "police" and not IsPedInAnyVehicle(ped, true))
        end,
        functionName = "police:client:GetEscorted",
    },

    ['cuffing:steal'] = {
        title = "Rob",
        icon = "#cuffs-steal",
        functionName = "robPlayer",
    },

    ['cuffing:cuff'] = {
        title = "Cuff",
        icon = "#cuffs-cuff",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name ~= "ambulance" and Data.job.name ~= "police" and not IsPedInAnyVehicle(ped, true))
        end,
        functionName = "police:client:CuffPlayer",
    },

    ['cuffing:uncuff'] = {
        title = "Uncuff",
        icon = "#cuffs-uncuff",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name ~= "ambulance" and Data.job.name ~= "police" and not IsPedInAnyVehicle(ped, true))
        end,
        functionName = "police:client:UnCuffPlayer",
    },

    --------------------------------------
    ['animations:brave'] = {
        title = "Brave",
        icon = "#animation-brave",
        functionName = "AnimSet:Brave"
    },

    ['animations:hurry'] = {
        title = "Hurry",
        icon = "#animation-hurry",
        functionName = "AnimSet:Hurry"
    },

    ['animations:business'] = {
        title = "Business Man",
        icon = "#animation-business",
        functionName = "AnimSet:Business"
    },

    ['animations:tipsy'] = {
        title = "Tipsy",
        icon = "#animation-tipsy",
        functionName = "AnimSet:Tipsy"
    },

    ['animations:injured'] = {
        title = "Injured",
        icon = "#animation-injured",
        functionName = "AnimSet:Injured"
    },

    ['animations:tough'] = {
        title = "Tough",
        icon = "#animation-tough",
        functionName = "AnimSet:ToughGuy"
    },

    ['animations:sassy'] = {
        title = "Gay",
        icon = "#animation-sassy",
        functionName = "AnimSet:Sassy"
    },

    ['animations:sad'] = {
        title = "Sad",
        icon = "#animation-sad",
        functionName = "AnimSet:Sad"
    },

    ['animations:posh'] = {
        title = "King",
        icon = "#animation-posh",
        functionName = "AnimSet:Posh"
    },

    ['animations:alien'] = {
        title = "Alien",
        icon = "#animation-alien",
        functionName = "AnimSet:Alien"
    },

    ['animations:nonchalant'] = {
        title = "Calm",
        icon = "#animation-nonchalant",
        functionName = "AnimSet:NonChalant"
    },

    ['animations:hobo'] = {
        title = "Homeless",
        icon = "#animation-hobo",
        functionName = "AnimSet:Hobo"
    },

    ['animations:money'] = {
        title = "Rich",
        icon = "#animation-money",
        functionName = "AnimSet:Money"
    },

    ['animations:swagger'] = {
        title = "Cool",
        icon = "#animation-swagger",
        functionName = "AnimSet:Swagger"
    },

    ['animations:shady'] = {
        title = "Gangster",
        icon = "#animation-shady",
        functionName = "AnimSet:Shady"
    },

    ['animations:maneater'] = {
        title = "Gay",
        icon = "#animation-maneater",
        functionName = "AnimSet:ManEater"
    },

    ['animations:chichi'] = {
        title = "Calm",
        icon = "#animation-chichi",
        functionName = "AnimSet:ChiChi"
    },

    ['animations:default'] = {
        title = "Default",
        icon = "#animation-default",
        functionName = "AnimSet:default"
    },

    ["expressions:angry"] = {
        title="Angry",
        icon="#expressions-angry",
        functionName = "expressions",
        functionParameters =  { "mood_angry_1" }
    },

    ["expressions:drunk"] = {
        title="Drunk",
        icon="#expressions-drunk",
        functionName = "expressions",
        functionParameters =  { "mood_drunk_1" }
    },

    ["expressions:dumb"] = {
        title="Dumb",
        icon="#expressions-dumb",
        functionName = "expressions",
        functionParameters =  { "pose_injured_1" }
    },

    ["expressions:electrocuted"] = {
        title="Electrified",
        icon="#expressions-electrocuted",
        functionName = "expressions",
        functionParameters =  { "electrocuted_1" }
    },

    ["expressions:grumpy"] = {
        title="Disgruntled",
        icon="#expressions-grumpy",
        functionName = "expressions", 
        functionParameters =  { "mood_drivefast_1" }
    },

    ["expressions:happy"] = {
        title="Happy",
        icon="#expressions-happy",
        functionName = "expressions",
        functionParameters =  { "mood_happy_1" }
    },

    ["expressions:injured"] = {
        title="Injured",
        icon="#expressions-injured",
        functionName = "expressions",
        functionParameters =  { "mood_injured_1" }
    },

    ["expressions:joyful"] = {
        title="Happy",
        icon="#expressions-joyful",
        functionName = "expressions",
        functionParameters =  { "mood_dancing_low_1" }
    },

    ["expressions:mouthbreather"] = {
        title="Mouth Breather",
        icon="#expressions-mouthbreather",
        functionName = "expressions",
        functionParameters = { "smoking_hold_1" }
    },

    ["expressions:normal"]  = {
        title="Default",
        icon="#expressions-normal",
        functionName = "expressions:clear"
    },

    ["expressions:oneeye"]  = {
        title="Oneeye",
        icon="#expressions-oneeye",
        functionName = "expressions",
        functionParameters = { "pose_aiming_1" }
    },

    ["expressions:shocked"]  = {
        title="Suprised",
        icon="#expressions-shocked",
        functionName = "expressions",
        functionParameters = { "shocked_1" }
    },

    ["expressions:sleeping"]  = {
        title="Sleeping",
        icon="#expressions-sleeping",
        functionName = "expressions",
        functionParameters = { "dead_1" }
    },

    ["expressions:smug"]  = {
        title="Satisfied",
        icon="#expressions-smug",
        functionName = "expressions",
        functionParameters = { "mood_smug_1" }
    },

    ["expressions:speculative"]  = {
        title="Speculative",
        icon="#expressions-speculative",
        functionName = "expressions",
        functionParameters = { "mood_aiming_1" }
    },

    ["expressions:stressed"]  = {
        title="Stressed",
        icon="#expressions-stressed",
        functionName = "expressions",
        functionParameters = { "mood_stressed_1" }
    },

    ["expressions:sulking"]  = {
        title="Sulking",
        icon="#expressions-sulking",
        functionName = "expressions",
        functionParameters = { "mood_sulk_1" },
    },

    ["expressions:weird"]  = {
        title="Weird",
        icon="#expressions-weird",
        functionName = "expressions",
        functionParameters = { "effort_2" }
    },

    ["expressions:weird2"]  = {
        title="Weird-2",
        icon="#expressions-weird2",
        functionName = "expressions",
        functionParameters = { "effort_3" }
     },    


    --------------------------------------
    ["emotes:smoke"] = {
        title = "Smoke",
        icon = "#emotes-smoke",
        functionName = 'menu:dpemotes:cmd',
        functionParameters =  { "emote" ,"smoke" }
    },

    ["emotes:lean"] = {
        title = "Lean",
        icon = "#emotes-lean",
        functionName = 'menu:dpemotes:cmd',
        functionParameters =  { "emote" ,"lean" }
    },

    ["emotes:sitchair"] = {
        title = "Sit",
        icon = "#emotes-sitchair",
        functionName = 'menu:dpemotes:cmd',
        functionParameters =  { "emote" ,"sitchair" }
    },

    ["emotes:dance"] = {
        title = "Dance",
        icon = "#emotes-dance",
        functionName = 'menu:dpemotes:cmd',
        functionParameters =  { "dance" ,"dance" }
    },
   
    ["emotes:surr"] = {
        title = "Surrender",
        icon = "#emotes-surr",
        functionName = 'menu:dpemotes:cmd',
        functionParameters =  { "emote" , "surrender" }
    },

    --------------------------------------

    ['vehicle:callMechanic'] = {
        title = "Call Mechanic",
        icon = "#vehicle-callmec",
        functionName = "menu:general:callmechanic"
    },

    ['vehicle:engine'] = {
        title = "Start Engine",
        icon = "#vehicle-engine",
        functionName = "menu:hotwire:openOwner"
    },

    ['vehicle:search'] = {
        title = "Vehicle Search",
        icon = "#vehicle-search",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name ~= "ambulance" and Data.job.name ~= "police")
        end,
        functionName = "menu:hotwire",
        functionParameters =  { "search" }
    },

    ['vehicle:hotwire'] = {
        title = "Hotwire Engine",
        icon = "#vehicle-hotw",
        enableMenu = function()
            local Data = ESX.GetPlayerData()
            return (not isDead and Data.job ~= nil and Data.job.name ~= "ambulance" and Data.job.name ~= "police")
        end,
        functionName = "menu:hotwire",
        functionParameters =  { "hotw" }
    },

    --------------------------------------
    
    ['police:cone'] = {
        title = "Cone",
        icon = "#object-cone",
        functionName = "police:client:spawnCone",
    },
    
    ['police:barier'] = {
        title = "Barrier",
        icon = "#police",
        functionName = 'police:client:spawnBarier',
    },
    
    ['police:light'] = {
        title = "Light",
        icon = "#object-light",
        functionName = "police:client:spawnLight",
    },
        
    ['police:deleteObject'] = {
        title = "Delete Object",
        icon = "#object-delete",
        functionName = "police:client:deleteObject",
    },

    ['police:search'] = {
        title = "Search",
        icon = "#police-search",
        functionName = "YM:policerob",
    },
    ['police:checkbank'] = {
        title = "Bank",
        icon = "#police-check-bank",
        functionName = "police:client:checkBank"
    },
    ['police:impound'] = {
        title = "Impound",
        icon = "#police-jail",
        functionName = "impound"
    },

    ['police:bill'] = {
        title = "Bill",
        icon = "#ems-bill",
        functionName = "police:client:fineMenu",
    },

    ['police:bills'] = {
        title = "Unpaid Bills",
        icon = "#police-bills",
        functionName = "police:client:finesMenu",
    },

    ['police:cuff'] = {
        title = "Cuff",
        icon = "#police-cuff",
        functionName = "police:client:CuffPlayerSoft"
    },

    ['police:uncuff'] = {
        title = "Uncuff",
        icon = "#police-uncuff",
        functionName = "police:client:UnCuffPlayer"
    },

    ['police:mdt'] = {
        title = "MDT",
        icon = "#police-mdt",
        functionName = "mdt:Open"
    },

    ['police:putinvehicle'] = {
        title = "Put in Vehicle",
        icon = "#general-put-in-veh",
        functionName = "police:client:PutPlayerInVehicle",
    },

    ['police:outofvehicle'] = {
        title = "Take Out From Vehicle",
        icon = "#general-unseat-nearest",
        functionName = "police:client:SetPlayerOutVehicle",
    },

    ['police:drag'] = {
        title = "Drag",
        icon = "#police-drag",
        functionName = "police:client:EscortPlayer",
    },

    --------------------------------------

    ['ems:bill'] = {
        title = "Bill",
        icon = "#ems-bill",
        functionName = "menu:ems",
        functionParameters =  { "bill" }
    },

    ['ems:revive'] = {
        title = "Revive",
        icon = "#ems-revive",
        functionName = "menu:ems",
        functionParameters =  { "revive" }
    },

    ['ems:heal'] = {
        title = "Heal",
        icon = "#ems-heal",
        functionName = "menu:ems",
        functionParameters =  { "heal" }
    },

    ['ems:drag'] = {
        title = "Drag",
        icon = "#ems-drag",
        functionName = "Carry:Event"
    },

    ['ems:med'] = {
        title = "Check Pulse",
        icon = "#ems-heal",
        functionName = "menu:ems",
        functionParameters =  { "medsystem" }
    },

    ['ems:putinvehicle'] = {
        title = "Put in Vehicle",
        icon = "#ems-putinveh",
        functionName = "menu:ems",
        functionParameters =  { "piv" }
    },

    --------------------------------------
	['news:boom'] = {
        title = "Boom-Mic",
        icon = "#news-boom",
        functionName = "Mic:ToggleBMic"
    },

    ['news:cam'] = {
        title = "Camera",
        icon = "#news-cam",
        functionName = "Cam:ToggleCam"
    },

    ['news:mic'] = {
        title = "Microphone",
        icon = "#news-mic",
        functionName = "Mic:ToggleMic"
    },


    --------------------------------------
    ["mechanic:bill"] = {
        title = "Bill",
        icon = "#ems-bill",
        functionName = "mechanic:bill"
    },

    ["mechanic:lookupvehicle"] = {
        title = "Search Plate",
        icon = "#general-search",
        functionName = "menu:police:lookupvehicle"
    },

    ["mechanic:hijack"] = {
        title = "Hijack",
        icon = "#mechanic-hijack",
        functionName = "mechanic:onHijack",
    },

    ["mechanic:repair"] = {
        title = "Repair",
        icon = "#mechanic-repair",
        functionName = "mechanic:repair"
    },

    ["mechanic:wash"] = {
        title = "Clean",
        icon = "#mechanic-wash",
        functionName = "mechanic:clean"
    },

    ["mechanic:impound"] = {
        title = "Impound",
        icon = "#mechanic-impound",
        functionName = "menu:impound"
    },

    ["mechanic:flatbed"] = {
        title = "Tow",
        icon = "#mechanic-flatbed",
        functionName = "mechanic:towuntow"
    },

    --------------------------------------
    ["accessories:mask"] = {
        title = "Mask",
        icon = "#accessories-mask",
        functionName = 'esx_accessories:SetUnsetAccessory',
        functionParameters =  { "Mask" }
    },

    ["accessories:glasses"] = {
        title = "Glasses",
        icon = "#accessories-glasses",
        functionName = 'esx_accessories:SetUnsetAccessory',
        functionParameters =  { "Glasses" }
    },

    ["accessories:helmet"] = {
        title = "Hat",
        icon = "#accessories-helmet",
        functionName = 'esx_accessories:SetUnsetAccessory',
        functionParameters =  { "Helmet" }
    },

    ["accessories:ears"] = {
        title = "Ears",
        icon = "#accessories-ears",
        functionName = 'esx_accessories:SetUnsetAccessory',
        functionParameters =  { "Ears" }
    }
}


function GetPlayers()
    local players = {}

    for i = 0, 32 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local closestPed = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        for index,value in ipairs(players) do
            local target = GetPlayerPed(value)
            if(target ~= ply) then
                local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
                local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
                if(closestDistance == -1 or closestDistance > distance) and not IsPedInAnyVehicle(target, false) then
                    closestPlayer = value
                    closestPed = target
                    closestDistance = distance
                end
            end
        end
        return closestPlayer, closestDistance, closestPed
    end
end

