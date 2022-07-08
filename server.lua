
RegisterNetEvent('craft:server:savejson')
AddEventHandler('craft:server:savejson', function(data)
    SaveResourceFile(GetCurrentResourceName(), "./data.json", json.encode(data), -1)
end)

