

local QBCore = exports['qb-core']:GetCoreObject()

--[[RegisterNetEvent('craft:server:savejson')
AddEventHandler('craft:server:savejson', function(data)
    SaveResourceFile(GetCurrentResourceName(), "./data.json", json.encode(data), -1)
end)]]

RegisterNetEvent('craft:server:checkNeedfoCraft')
AddEventHandler('craft:server:checkNeedfoCraft', function(currentCraft, need, time, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = true
	local results = { }
    for index, value in pairs(need) do
        for i, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[i].name == value.name and Player.PlayerData.items[i].amount >= value.amount then
                result = true
                table.insert(results, true)
                break
            else
                result = false
            end
        end
    end
    if #need == #results then 
        TriggerClientEvent('craft:startcraft', src, currentCraft, need, time, amount)
    end 
end)

RegisterNetEvent('craft:server:done')
AddEventHandler('craft:server:done', function(currentCraft, need, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = true
	local results = { }
    for index, value in pairs(need) do
        Player.Functions.RemoveItem(value.name, value.amount)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[value.name], "remove")    
    end
    Player.Functions.AddItem(currentCraft, amount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[currentCraft], "add")
    Player.Functions.SetMetaData("craftingrep", Player.PlayerData.metadata["craftingrep"]+Config.addReput)
    TriggerClientEvent('craft:refresh', src)
end)


