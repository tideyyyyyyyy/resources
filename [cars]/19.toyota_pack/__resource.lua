resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
 
 -- Head over to https://docs.fivem.net/game-references/data-files/ for the data files
 
 
files {
	--celica
    'stream/celica/vehicles.meta',
    'stream/celica/carvariations.meta',
    'stream/celica/carcols.meta',
    'stream/celica/handling.meta',
   -- 'stream/celica/vehiclelayouts.meta',
   
	--supra
    'stream/supra/vehicles.meta',
    'stream/supra/carvariations.meta',
    'stream/supra/carcols.meta',
    'stream/supra/handling.meta',
    --'stream/supra/vehiclelayouts.meta',
	
	
	--rmodsupra
    'stream/rmodsupra/vehicles.meta',
    'stream/rmodsupra/carvariations.meta',
    'stream/rmodsupra/carcols.meta',
    'stream/rmodsupra/handling.meta',
    --'stream/rmodsupra/vehiclelayouts.meta',
	
	--Normal Supra
	'stream/normalsupra/vehicles.meta',
    'stream/normalsupra/carvariations.meta',
    'stream/normalsupra/carcols.meta',
    'stream/normalsupra/handling.meta',
}
--celica
data_file 'HANDLING_FILE' 'stream/celica/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/celica/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/celica/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/celica/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/celica/vehiclelayouts.meta'

--supra
data_file 'HANDLING_FILE' 'stream/supra/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/supra/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/supra/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/supra/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/supra/vehiclelayouts.meta'

--rmodsupra
data_file 'HANDLING_FILE' 'stream/rmodsupra/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/rmodsupra/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/rmodsupra/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/rmodsupra/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/rmodsupra/vehiclelayouts.meta'

--normalsupra
data_file 'HANDLING_FILE' 'stream/normalsupra/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/normalsupra/vehicles.meta'
data_file 'CARCOLS_FILE' 'stream/normalsupra/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/normalsupra/carvariations.meta'
--data_file 'VEHICLE_LAYOUTS_FILE' 'stream/rmodsupra/vehiclelayouts.meta'

client_script {
    'toyota.lua'
}