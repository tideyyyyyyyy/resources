function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()



--Bugatti
AddTextEntry('2017chiron','Bugatti Chiron')
AddTextEntry('bugatti','Bugatti Veyron')
AddTextEntry('divo','Bugatti Divo')
end)