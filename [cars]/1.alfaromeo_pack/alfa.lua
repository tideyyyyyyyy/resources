function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()
--alfa
AddTextEntry('alfa67','Alfa Romeo 33 Stradale')
AddTextEntry('ardv','Alfa Romeo Disco Volante')
AddTextEntry('argiu','Alfa Romeo Giulietta Quadrifoglio Verde')
AddTextEntry('stelvio','AlfaRomeo Stelvio Quadrifoglio')
AddTextEntry('tz3','AlfaRomeo TZ3')

end)