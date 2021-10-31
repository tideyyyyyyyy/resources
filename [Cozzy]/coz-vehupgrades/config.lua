mLibs = exports["meta_libs"]
Progress = exports["progbars"]
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)

Config = {
  Lang = 'en',                      -- Only supports English. Make your own for other languages.
  ActionTime = 5000,                -- Time to remove/add an upgrade item from a vehicle.

  CanRemoveOwn = false,             -- Can a player remove their own upgrades? If false, only mechanics can remove.
  ReturnOnRemoval = true,           -- Give player item back on removal?

  MechanicJob = 'police',           -- The job name of the mechanic
  OnlyMechanicCanCheck = false,     -- Can only the mechanic check if a vehicle has upgrades?
  UseESXInventoryHud = true,        -- Purely to close inventory hud after using an item. Closing may not work on some versions.
}

_U = Langs[Config.Lang]

