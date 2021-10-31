function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

	AddTextEntry('aventadors','Lamborghini Aventador')
AddTextEntry('diablo','Lamborghini Diablo Classic')
AddTextEntry('gallardo2005','Lamborghini Gallardo 2005')
AddTextEntry('lp610','Lamborghini Huracan')
AddTextEntry('rmodveneno','Lamborghini Veneno')

end)