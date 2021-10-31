resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--chiron
    'stream/chiron/vehicles.meta',
    'stream/chiron/carvariations.meta',
    'stream/chiron/carcols.meta',
    'stream/chiron/handling.meta',
   -- 'stream/chiron/vehiclelayouts.meta',
	
	--polchiron
	 'stream/polchiron/vehicles.meta',
    'stream/polchiron/carvariations.meta',
    'stream/polchiron/carcols.meta',
    'stream/polchiron/handling.meta',
   -- 'stream/polchiron/vehiclelayouts.meta',
   
	--veyron
    'stream/veyron/vehicles.meta',
    'stream/veyron/carvariations.meta',
    'stream/veyron/carcols.meta',
    'stream/veyron/handling.meta',
    --'stream/veyron/vehiclelayouts.meta',
	
	--2019-Bugatti-Divo
    'stream/2019-Bugatti-Divo/vehicles.meta',
    'stream/2019-Bugatti-Divo/carvariations.meta',
    --'stream/2019-Bugatti-Divo/carcols.meta',
    'stream/2019-Bugatti-Divo/handling.meta',
    --'stream/2019-Bugatti-Divo/vehiclelayouts.meta',
	
	
}
--chiron
data_file 'HANDLING_FILE' 'stream/chiron/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/chiron/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/chiron/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/chiron/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/chiron/vehiclelayouts.meta'

--polchiron
data_file 'HANDLING_FILE' 'stream/polchiron/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/polchiron/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/polchiron/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/polchiron/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/polchiron/vehiclelayouts.meta'

--rs6
data_file 'HANDLING_FILE' 'stream/veyron/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/veyron/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/veyron/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/veyron/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/veyron/vehiclelayouts.meta'

--2019-Bugatti-Divo
data_file 'HANDLING_FILE' 'stream/2019-Bugatti-Divo/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/2019-Bugatti-Divo/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/2019-Bugatti-Divo/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/2019-Bugatti-Divo/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/2019-Bugatti-Divo/vehiclelayouts.meta'

client_script {
    'bugatti.lua'
}
