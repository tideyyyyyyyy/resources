fx_version 'adamant'
games { 'gta5' }

mod 'vehupgrades'
version '1.0.0'

client_scripts {
  'src/langs/langs.lua',
  'src/langs/en.lua',
  
  'config.lua',
  'utils.lua',
  'upgradeitems.lua',

  'src/client/main.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',

  'src/langs/langs.lua',
  'src/langs/en.lua',

  'config.lua',
  'upgradeitems.lua',

  'src/server/main.lua',
}

dependencies {
  'meta_libs',
  'es_extended',
  'progbars',
} 
