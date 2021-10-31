function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey('ADD_TEXT_ENTRY'), key, value)
end

Citizen.CreateThread(function()
--audi
AddTextEntry('2015s3','Audi S3')
AddTextEntry('a8lfsi','Audi A8')
AddTextEntry('aaq4','Audi A4 2017')
AddTextEntry('audir8lms2','Audi R8 Racing LMS') 
AddTextEntry('b5s4','Audi S4')
AddTextEntry('lms3','Audi R8 LMS') 
AddTextEntry('r8ppi','Audi R8')
AddTextEntry('rs318','Audi RS3')
AddTextEntry('rs5','Audi RS5')
AddTextEntry('rs6','Audi RS6')
AddTextEntry('rs7','Audi RS7')
end)