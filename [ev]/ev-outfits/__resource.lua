client_scripts{
    'client/client.lua',
    '@es_extended/locale.lua',
    'config.lua'
}

server_script('server/server.lua')
ui_page('client/html/index.html')

files({
    'client/html/index.html'
})