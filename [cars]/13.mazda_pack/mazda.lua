function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

--Mazda
AddTextEntry('rx7tunable','Mazda RX 7')


end)