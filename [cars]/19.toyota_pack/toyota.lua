function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()



AddTextEntry('GT86','Toyota GT86 ')
AddTextEntry('rmodsupra','Toyota Supra RMod ')
AddTextEntry('supra2','Toyota Supra')

end)
