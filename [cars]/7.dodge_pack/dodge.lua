function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


--Dodge
AddTextEntry('16challenger','Dodge Challenger 2016')
AddTextEntry('16charger','Dodge Charger 2016')
AddTextEntry('2017Charger','Dodge Charger 2017')
AddTextEntry('69charger','Dodge Charger 1969')
AddTextEntry('99viper','Dodge Viper 1999')
AddTextEntry('charger','Dodge Classic Charger')
AddTextEntry('demon','Dodge Demon Charger')
AddTextEntry('ram16','Dodge Ram 2016')

end)