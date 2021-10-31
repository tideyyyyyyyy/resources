function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()


--BMW
AddTextEntry('17m760i','BMW M7 2017')
AddTextEntry('alpinae30','BMW M3 E30 Alpine Edition')
AddTextEntry('bmci','BMW M5')
AddTextEntry('bmwe65','BMW 760i')
AddTextEntry('i8','BMW I8')
AddTextEntry('m1procar','BMW M1 Procar')
AddTextEntry('m3','BMW M3')
AddTextEntry('m3e30','BMW M3 E30')
AddTextEntry('m3e46','BMW M3 E46')
AddTextEntry('m5f90','BMW M5 F90')
AddTextEntry('m6f13','BMW M6')
AddTextEntry('rmodm4','BMW M4')
AddTextEntry('x6m','BMW X6 M-Sport')
AddTextEntry('z3','BMW Z3 M-Sport')
AddTextEntry('z419','BMW Z4 M40i 2019')

end)