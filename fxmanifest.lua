shared_script {"@EpicEye/import.lua"}
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'
name 'woro-'
author 'WoroWoro#3229'
version '1.0.0'
shared_script {
    'config.lua',
    '@es_extended/imports.lua'
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}
client_scripts {
    'client/main.lua'
}
dependencies {
    'es_extended',
}
ui_page {
    'web/index.html'
}
files {
    'web/**', 
}
escrow_ignore {
    'web/**',
    'config.lua',
}
