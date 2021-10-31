
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()



AddTextEntry('180sx','Nissan 180sx')
AddTextEntry('370z','Nissan 370z')
AddTextEntry('gtr','Nissan Skyline GTR R35')
AddTextEntry('nissantitan17','Nissan Titan')
AddTextEntry('qashqai16','Nissan Qashqai 2016')
AddTextEntry('s15tex','Nissan Silvia')
AddTextEntry('skyline','Nissan Skyline R34')

end)