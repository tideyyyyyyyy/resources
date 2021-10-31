function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


AddTextEntry('amarok','VW Amarok V6')
AddTextEntry('arteon','VW Arteon')
AddTextEntry('beetle74','VW Beetle 1974')
AddTextEntry('fusca','VW Beetle 1974 Stanced')
AddTextEntry('golf1','VW Golf MK 1')
AddTextEntry('golf2','VW Golf MK 2')
AddTextEntry('golf3','VW Golf MK 3')
AddTextEntry('golf4','VW Golf MK 4')
AddTextEntry('golf5','VW Golf MK 5')
AddTextEntry('golf6','VW Golf MK 6')
AddTextEntry('golf7','VW Golf MK 7')
AddTextEntry('golfr','VW Golf R')
AddTextEntry('sciroccos81','VW Scirocco 1981')
AddTextEntry('vwstance','VW Passat Stanced')

end)