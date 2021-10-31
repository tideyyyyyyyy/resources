function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

AddTextEntry('cobra','Shelby Cobra 427')
AddTextEntry('fmss','Shelby Super Snake')
AddTextEntry('shelbygt500','Shelby GT 500')

end)