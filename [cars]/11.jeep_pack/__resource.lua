resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--jeepreneg
    'stream/jeepreneg/vehicles.meta',
    'stream/jeepreneg/carvariations.meta',
    'stream/jeepreneg/carcols.meta',
    'stream/jeepreneg/handling.meta',
   -- 'stream/jeepreneg/vehiclelayouts.meta',
	
   
	--rubilord
   -- 'stream/rubilord/vehicles.meta',
   -- 'stream/rubilord/carvariations.meta',
    --'stream/rubilord/carcols.meta',
   -- 'stream/rubilord/handling.meta',
    --'stream/rubilord/vehiclelayouts.meta',
	
	--srt8
	'stream/srt8/vehicles.meta',
    'stream/srt8/carvariations.meta',
    'stream/srt8/carcols.meta',
    'stream/srt8/handling.meta',
    'stream/srt8/vehiclelayouts.meta',
	
	--Jeep-DEMONHAWK
	'stream/Jeep-DEMONHAWK/vehicles.meta',
    'stream/Jeep-DEMONHAWK/carvariations.meta',
    'stream/Jeep-DEMONHAWK/carcols.meta',
    'stream/Jeep-DEMONHAWK/handling.meta',
    --'stream/Jeep-DEMONHAWK/vehiclelayouts.meta',
	
	
	
}
--jeepreneg
data_file 'HANDLING_FILE' 'stream/jeepreneg/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/jeepreneg/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/jeepreneg/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/jeepreneg/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/jeepreneg/vehiclelayouts.meta'

--rubilord
--data_file 'HANDLING_FILE' 'stream/rubilord/handling.meta'
--data_file 'VEHICLE_METADATA_FILE' 'stream/rubilord/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/rubilord/carcols.meta'
--data_file 'VEHICLE_VARIATION_FILE' 'stream/rubilord/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/rubilord/vehiclelayouts.meta'

--srt8
data_file 'HANDLING_FILE' 'stream/srt8/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/srt8/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/srt8/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/srt8/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'stream/srt8/vehiclelayouts.meta'


--Jeep-DEMONHAWK
data_file 'HANDLING_FILE' 'stream/Jeep-DEMONHAWK/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/Jeep-DEMONHAWK/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/Jeep-DEMONHAWK/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/Jeep-DEMONHAWK/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'stream/Jeep-DEMONHAWK/vehiclelayouts.meta'

client_script {
    'jeep.lua'
}