resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--tesla3
    'stream/tesla3/vehicles.meta',
    'stream/tesla3/carvariations.meta',
    'stream/tesla3/carcols.meta',
    'stream/tesla3/handling.meta',
   -- 'stream/tesla3/vehiclelayouts.meta',
	
   
	--teslar
    'stream/teslar/vehicles.meta',
    'stream/teslar/carvariations.meta',
    'stream/teslar/carcols.meta',
    'stream/teslar/handling.meta',
    --'stream/teslar/vehiclelayouts.meta',
	
	--teslas
	'stream/teslas/vehicles.meta',
    'stream/teslas/carvariations.meta',
    'stream/teslas/carcols.meta',
    'stream/teslas/handling.meta',
    --'stream/teslas/vehiclelayouts.meta',
	
	--teslax
	'stream/teslax/vehicles.meta',
    'stream/teslax/carvariations.meta',
    'stream/teslax/carcols.meta',
    'stream/teslax/handling.meta',
    --'stream/teslax/vehiclelayouts.meta',
	
	
}
--tesla3
data_file 'HANDLING_FILE' 'stream/tesla3/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/tesla3/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/tesla3/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/tesla3/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/tesla3/vehiclelayouts.meta'

--teslar
data_file 'HANDLING_FILE' 'stream/teslar/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/teslar/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/teslar/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/teslar/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/teslar/vehiclelayouts.meta'

--teslas
data_file 'HANDLING_FILE' 'stream/teslas/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/teslas/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/teslas/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/teslas/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/teslas/vehiclelayouts.meta'

--teslax
data_file 'HANDLING_FILE' 'stream/teslax/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/teslax/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/teslax/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/teslax/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/teslax/vehiclelayouts.meta'

client_script {
    'tesla.lua'
}