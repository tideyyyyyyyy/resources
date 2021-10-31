resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--civic1999
    'stream/civic1999/vehicles.meta',
    'stream/civic1999/carvariations.meta',
    'stream/civic1999/carcols.meta',
    'stream/civic1999/handling.meta',
   -- 'stream/civic1999/vehiclelayouts.meta',
   
   	--ap2
    'stream/ap2/vehicles.meta',
    'stream/ap2/carvariations.meta',
    'stream/ap2/carcols.meta',
    'stream/ap2/handling.meta',
   -- 'stream/ap2/vehiclelayouts.meta',
   
   	--2018-Honda-Civic-Type-R
    'stream/2018-Honda-Civic-Type-R/vehicles.meta',
    'stream/2018-Honda-Civic-Type-R/carvariations.meta',
   -- 'stream/2018-Honda-Civic-Type-R/carcols.meta',
    'stream/2018-Honda-Civic-Type-R/handling.meta',
   -- 'stream/2018-Honda-Civic-Type-R/vehiclelayouts.meta',
 
}
--civic1999
data_file 'HANDLING_FILE' 'stream/civic1999/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/civic1999/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/civic1999/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/civic1999/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/civic1999/vehiclelayouts.meta'

--ap2
data_file 'HANDLING_FILE' 'stream/ap2/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/ap2/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/ap2/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/ap2/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/ap2/vehiclelayouts.meta'

--2018-Honda-Civic-Type-R
data_file 'HANDLING_FILE' 'stream/2018-Honda-Civic-Type-R/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/2018-Honda-Civic-Type-R/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/2018-Honda-Civic-Type-R/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/2018-Honda-Civic-Type-R/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/2018-Honda-Civic-Type-R/vehiclelayouts.meta'

client_script {
    'honda.lua'
}