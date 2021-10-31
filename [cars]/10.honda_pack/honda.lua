function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

	AddTextEntry('ap2','Honda S2000')
AddTextEntry('civic','Honda Civic 1999')
AddTextEntry('hondacivictr','Honda Civic Type R 2018')

end)