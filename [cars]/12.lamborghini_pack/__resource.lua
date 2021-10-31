resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--aventadors
    'stream/aventadors/vehicles.meta',
    'stream/aventadors/carvariations.meta',
    'stream/aventadors/carcols.meta',
    'stream/aventadors/handling.meta',
   -- 'stream/aventadors/vehiclelayouts.meta',
	
	--centenario
	 'stream/centenario/vehicles.meta',
    'stream/centenario/carvariations.meta',
    'stream/centenario/carcols.meta',
    'stream/centenario/handling.meta',
    --'stream/centenario/vehiclelayouts.meta',
   
	--diablo
    'stream/diablo/vehicles.meta',
    'stream/diablo/carvariations.meta',
    --'stream/diablo/carcols.meta',
    'stream/diablo/handling.meta',
    --'stream/diablo/vehiclelayouts.meta',
	
	--gallardo
	'stream/gallardo/vehicles.meta',
    'stream/gallardo/carvariations.meta',
    'stream/gallardo/carcols.meta',
    'stream/gallardo/handling.meta',
    --'stream/gallardo/vehiclelayouts.meta',
	
	--huracan
	'stream/huracan/vehicles.meta',
    'stream/huracan/carvariations.meta',
    'stream/huracan/carcols.meta',
    'stream/huracan/handling.meta',
    --'stream/huracan/vehiclelayouts.meta',
	
	--polaventa
	'stream/polaventa/vehicles.meta',
    'stream/polaventa/carvariations.meta',
    'stream/polaventa/carcols.meta',
    'stream/polaventa/handling.meta',
    --'stream/polaventa/vehiclelayouts.meta',
	
	--reventon
	'stream/reventon/vehicles.meta',
    'stream/reventon/carvariations.meta',
    'stream/reventon/carcols.meta',
    'stream/reventon/handling.meta',
   -- 'stream/reventon/vehiclelayouts.meta',
   
  
}
--aventadors
data_file 'HANDLING_FILE' 'stream/aventadors/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/aventadors/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/aventadors/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/aventadors/carvariations.meta'
-- data_file 'VEHICLE_LAYOUTS_FILE' 'stream/aventadors/vehiclelayouts.meta'

--centenario
data_file 'HANDLING_FILE' 'stream/centenario/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/centenario/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/centenario/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/centenario/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/centenario/vehiclelayouts.meta'

--diablo
data_file 'HANDLING_FILE' 'stream/diablo/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/diablo/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/diablo/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/diablo/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/diablo/vehiclelayouts.meta'

--gallardo
data_file 'HANDLING_FILE' 'stream/gallardo/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/gallardo/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/gallardo/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/gallardo/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/gallardo/vehiclelayouts.meta'

--huracan
data_file 'HANDLING_FILE' 'stream/huracan/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/huracan/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/huracan/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/huracan/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/huracan/vehiclelayouts.meta'

--polaventa
data_file 'HANDLING_FILE' 'stream/polaventa/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/polaventa/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/polaventa/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/polaventa/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/polaventa/vehiclelayouts.meta'

--reventon
data_file 'HANDLING_FILE' 'stream/reventon/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/reventon/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/reventon/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/reventon/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/reventon/vehiclelayouts.meta'


client_script {
    'lamborghini.lua'
}