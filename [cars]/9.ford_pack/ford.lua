function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()

	AddTextEntry('boss302','Ford Mustang Boss 302')
AddTextEntry('everest','Ford Everest')
AddTextEntry('f150','Ford F150')
AddTextEntry('fg4m','Ford GT40')
AddTextEntry('focusrs','Ford Focus RS')
AddTextEntry('fordhv2','Ford Mustang Hoonigan Model A')
AddTextEntry('gt17','Ford GT40 2017 Edition')
AddTextEntry('keenblock','Ford Mustang Hoonigan - Ken Block Edition')
AddTextEntry('mgt','Ford Mustang GT')
AddTextEntry('mustang65','Ford Mustang 1965')
AddTextEntry('mustangmach1','Ford Mustang MK 1')
AddTextEntry('raptor2017','Ford VelociRaptor 6X6')
AddTextEntry('rmodfordgt','Ford Mustang GT RMod')
AddTextEntry('rmodmustang','Ford Mustang RMod')
AddTextEntry('rrf150w','Ford F150 Crawler')
end)