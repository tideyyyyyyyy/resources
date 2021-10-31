useESX = false 
testCommand = true -- enable test command
dispatchKey = "z" -- Dispatch
dispatchHeadingKey = "y" -- Dispatch [Heading to The Police Call]
dispatchMarkKey = "e" -- Dispatch [Mark On Map]

--[[ sample usage
TriggerEvent("coz-policeAlert:alert", alertName, plate, alertCoord, vehicle)

alertName: "string" - the name of the notice that will appear in the notification ex: Gun Fired
plate: "false/true" - hide license plate 
alertCoord: "vector3" - special notice coordinate ex: GetEntityCoords(PlayerPedId()) or vector3(0.0 , 0.0, 0.0)
vehicle: "false/true" - hide vehicle information 
]]