fx_version 'cerulean'
game 'gta5'

description 'Craft Sysytem for QBCore by @Cruso#5044'
version '0.0.1'

shared_scripts {
    'config.lua',
	
}

client_script 'client.lua'
server_script 'server.lua'

ui_page "html/index.html"



files {
    "html/js/*.js",
   
    "html/*.html",
    "html/css/*.css",
    "html/img/*.png",
    "html/img/categ/*.png",

}