function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

AddTextEntry('models','Tesla S')
AddTextEntry('teslax','Tesla X')
AddTextEntry('tmodel','Tesla Model 3')
AddTextEntry('tr22','Tesla R')

end)