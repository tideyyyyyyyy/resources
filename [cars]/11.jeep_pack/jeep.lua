function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

	AddTextEntry('demonhawk','Jeep Demonhawk')
AddTextEntry('jeepreneg','Jeep Renegade')
AddTextEntry('srt8','Jeep SRT 8')

end)