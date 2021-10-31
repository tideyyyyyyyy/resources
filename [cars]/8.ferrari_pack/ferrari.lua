function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


--Ferrari
AddTextEntry('250testarossa','Ferrari 250 Testarossa Vintage')
AddTextEntry('458speciale','Ferrari 458 Italia')
AddTextEntry('aperta','Ferrari LaFarrari Aperta')
AddTextEntry('enzo','Ferrari Enzo')
AddTextEntry('f288gto','Ferrari 288 GTO')
AddTextEntry('f40','Ferrari F40 Classic')
AddTextEntry('f430s','Ferrari 430 Scuderia')
AddTextEntry('f812','Ferrari 812')
AddTextEntry('ferporto','Ferrari Portofino')
AddTextEntry('fm488','Ferrari 458 Italia Mansory')
AddTextEntry('fstradale','Ferrari 360 Spyder')
AddTextEntry('fxxk','Ferrari FxxK Limited Edition')
AddTextEntry('gto','Ferrari 599x GTO')
AddTextEntry('mig','Ferrari Enzo Sport')
AddTextEntry('nlargo','Ferrari N-Largo')
AddTextEntry('pista','Ferrari 488 Pista')

end)