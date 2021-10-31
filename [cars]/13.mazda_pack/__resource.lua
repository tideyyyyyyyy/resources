resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--rx8
    --'stream/rx8/vehicles.meta',
    --'stream/rx8/carvariations.meta',
   -- 'stream/rx8/carcols.meta',
--'stream/rx8/handling.meta',
   -- 'stream/rx8/vehiclelayouts.meta',
   
	--x7b
    'stream/x7b/vehicles.meta',
    'stream/x7b/carvariations.meta',
    'stream/x7b/carcols.meta',
    'stream/x7b/handling.meta',
    --'stream/x7b/vehiclelayouts.meta',
	
	
}
--rx8
--data_file 'HANDLING_FILE' 'stream/rx8/handling.meta'
--data_file 'VEHICLE_METADATA_FILE' 'stream/rx8/vehicles.meta'
--data_file 'CARCOLS_FILE' 'stream/rx8/carcols.meta'
--data_file 'VEHICLE_VARIATION_FILE' 'stream/rx8/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/rx8/vehiclelayouts.meta'


--rs6
data_file 'HANDLING_FILE' 'stream/x7b/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/x7b/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/x7b/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/x7b/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/x7b/vehiclelayouts.meta'

client_script {
    'mazda.lua'
}