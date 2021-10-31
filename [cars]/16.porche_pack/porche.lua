

function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


AddTextEntry('718boxster','Porche 718 Boxster')
AddTextEntry('718caymans','Porche 718 Cayman S')
AddTextEntry('911carreras','Porche 911 Carrera')
AddTextEntry('911rwb','Porche 911 Rocam')
AddTextEntry('cayenne','Porche Cayenne')
AddTextEntry('pruf','Porche 911 Ruf Edition')
AddTextEntry('pturismo','Porche Panamera 2017')

end)