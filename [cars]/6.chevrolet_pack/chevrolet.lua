function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()




--Chevrolet
AddTextEntry('2019zr1','Chevrolet ZR 1 2019')
AddTextEntry('c10custom','Chevrolet C10 Classic')
AddTextEntry('c7','Chevrolet C7 2')
AddTextEntry('camaro','Chevrolet Camaro')
AddTextEntry('exor','Chevrolet Camaro Henessey')
AddTextEntry('forgieC7','Chevrolet C7 1')
AddTextEntry('impala59c','Chevrolet Impala')
AddTextEntry('silv86','Chevrolet Silverado')
AddTextEntry('tahoe','Chevrolet Tahoe')

end)