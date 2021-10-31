resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--cobra
    'stream/cobra/vehicles.meta',
    'stream/cobra/carvariations.meta',
    --'stream/cobra/carcols.meta',
    'stream/cobra/handling.meta',
   -- 'stream/cobra/vehiclelayouts.meta',
	
   
	--eleanor
    --'stream/eleanor/vehicles.meta',
    --'stream/eleanor/carvariations.meta',
    --'stream/eleanor/carcols.meta',
    --'stream/eleanor/handling.meta',
    --'stream/eleanor/vehiclelayouts.meta',
	
	--snake
	'stream/snake/vehicles.meta',
    'stream/snake/carvariations.meta',
    --'stream/snake/carcols.meta',
    'stream/snake/handling.meta',
    --'stream/snake/vehiclelayouts.meta',
	
	--snake
	'stream/2020-Ford-Mustang-Shelby-GT500/vehicles.meta',
    'stream/2020-Ford-Mustang-Shelby-GT500/carvariations.meta',
    'stream/2020-Ford-Mustang-Shelby-GT500/carcols.meta',
    'stream/2020-Ford-Mustang-Shelby-GT500/handling.meta',
    'stream/2020-Ford-Mustang-Shelby-GT500/vehiclelayouts.meta',
	
	
}
--cobra
data_file 'HANDLING_FILE' 'stream/cobra/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/cobra/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/cobra/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/cobra/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/cobra/vehiclelayouts.meta'

--eleanor
--data_file 'HANDLING_FILE' 'stream/eleanor/handling.meta'
--data_file 'VEHICLE_METADATA_FILE' 'stream/eleanor/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/eleanor/carcols.meta'
--data_file 'VEHICLE_VARIATION_FILE' 'stream/eleanor/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/eleanor/vehiclelayouts.meta'

--snake
data_file 'HANDLING_FILE' 'stream/snake/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/snake/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/snake/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/snake/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/snake/vehiclelayouts.meta'

--snake
data_file 'HANDLING_FILE' 'stream/2020-Ford-Mustang-Shelby-GT500/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/2020-Ford-Mustang-Shelby-GT500/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/2020-Ford-Mustang-Shelby-GT500/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/2020-Ford-Mustang-Shelby-GT500/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'stream/2020-Ford-Mustang-Shelby-GT500/vehiclelayouts.meta'

client_script {
    'shelby.lua'
}