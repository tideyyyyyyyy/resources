function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

	AddTextEntry('a45amg','Mercedes A45 AMG')
AddTextEntry('benzsl63','Mercedes SL63 AMG')
AddTextEntry('c63s','Mercedes C63')
AddTextEntry('cla45sb','Mercedes CLA45 AMG')
AddTextEntry('e63amg','Mercedes E63 AMG')
AddTextEntry('g60l','Mercedes G60')
AddTextEntry('g65amg','Mercedes G65 AMG')
AddTextEntry('gl63','Mercedes GL63')
AddTextEntry('gle','Mercedes GLE AMG')
AddTextEntry('s500w222','Mercedes S500')
AddTextEntry('slsamg','Mercedes SLS AMG')
AddTextEntry('w140','Mercedes W-140')
AddTextEntry('xclass','Mercedes X-Class')

end)