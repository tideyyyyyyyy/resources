function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


--bentley
AddTextEntry('bcgt','Bentley Continental GT 2014')
AddTextEntry('ben17','Bentley Supersport 2017')
AddTextEntry('bentaygam','Bentley Masory')
AddTextEntry('bexp','Bentley EXP 10')
AddTextEntry('bmm','Bentley Mulsanne Mulliner 2013')
AddTextEntry('contgt13','Bentley Continental GT 2013')

end)