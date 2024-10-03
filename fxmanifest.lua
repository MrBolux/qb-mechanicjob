fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mr.Bolux as Bob Togolo'
description 'Job Mechanic'
version '1.0.0'

client_scripts {
    'client/main.lua',
    'client/useableItem.lua',
}

server_scripts {
    'server/useableItem.lua'
}

shared_scripts {
	'config.lua',
	'utils.lua',
    '@qb-core/shared/locale.lua',
	'locales/fr.lua',
}

dependencys {
    'togolo_lib',
}