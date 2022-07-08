Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}

local QBCore = exports['qb-core']:GetCoreObject()
local inUSe = false
local inUIPage = false

local function createBlip(data)
--    function blipCreate(coords, sprite, color, label)
    --print('blip', Config.BlipText, Config.BlipSprite, data.coords)
    local blip = AddBlipForCoord(data.coords)
    SetBlipSprite(blip, Config.BlipSprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, Config.BlipColor)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.BlipText)
    EndTextCommandSetBlipName(blip)
end

local function openCraft(data)
    if not inUIPage then
        local player = QBCore.Functions.GetPlayerData()
        local xp = player.metadata['craftingrep']
        --subcategories--
        local subcategories = {}
        for index, value in pairs(Config.Items) do
            local parent = Config.Categories[index].name
            --print('parent', parent)
            
                       
          
            
            --print('Config.Items[index]', index, json.encode(Config.Items[index]))
            local array = {}
            for k, j in pairs(Config.Items[index]) do
                for _, item in pairs(data.items) do
                    if item == k then
                    --items--
                        local Items = {}
                        
                        for i, v in pairs(j.items) do
                            local isItem = false
                            for _, l in ipairs(player.items) do
                                --print('i', i, l.name, j.items[i], l.amount)
                                if l.name == i then
                                    if l.amount >= j.items[i] then
                                        isItem = true
                                        break
                                    end
                                end
                            end
                            Items[#Items+1] = {
                                id = #Items+1,
                                name = i,
                                label = QBCore.Shared.Items[i].label,
                                image = "./img/"..i..".png",
                                amount = j.items[i],
                                in_stock = isItem
                            }
                        end
                        print('math.ceil(xp/100)', xp,xp/100, math.ceil(xp/100))
                        if math.ceil(xp/100)>=j.level then
                            array[#array+1] = {
                                id = #array+1,
                                name = j.name,
                                label = QBCore.Shared.Items[j.name].label,
                                image = "./img/"..j.name..".png",
                                amount = j.amount,
                                level = j.level,
                                time = j.time,
                                items = Items
                            }
                        end

                    end
                end
                
                
            end
           
            --print('value2', index, Config.Categories[index].name)
            subcategories[#subcategories+1] = {
                id = #subcategories+1,
                parent = parent,
                array = array
            }
        end
      
         --categories--
         local categories = {}

        for index, value in pairs(subcategories) do
            for i, v in pairs(Config.Categories) do
                if v.name == value.parent then
                    categories[#categories+1] = {
                        id = #categories+1,
                        name = v.name,
                        label = v.label,
                        image = "./img/categ/"..v.name..".png" 
                    }
                    break
                end
            end
        end

         

        SendNUIMessage({
            action = "openCraft",
            categories = categories,
            subcategories = subcategories
            
        })
        SetNuiFocus(true, true)
        inUIPage = true
        --print(json.encode(categories))
        TriggerServerEvent('craft:server:savejson', subcategories)
      
    end
end

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
    inUIPage = false
end)

RegisterNUICallback('not_in_stock', function()
    QBCore.Functions.Notify('У тебя нет необходимых ингридиентов или их не хватает', 'error', 7500)
end)


CreateThread(function()
    for index, value in pairs(Config.Locations) do
        if value.blip then
            createBlip(value)
        end
    end
end)

CreateThread(function()
    while not LocalPlayer.state['isLoggedIn'] do
        Wait(1500)
    end
    while true do
        local sleep = 1000
        local PlayerData = QBCore.Functions.GetPlayerData()
        for index, value in pairs(Config.Locations) do
            local pos = GetEntityCoords(PlayerPedId())
            local dist = #(pos - value.coords)
            if dist <= value.radius then
                local canOpen = false
                if #value.jobs > 0 then
                    for index, value in pairs(value.jobs) do
                        if value == PlayerData.job.name then
                            canOpen = true
                            break
                        end
                    end
                end
                if #value.gangs > 0 then
                    for index, value in pairs(value.gangs) do
                        if value == PlayerData.gang.name then
                            canOpen = true
                            break
                        end
                    end
                end
               
                sleep = 0
                if not inUSe then exports['qb-core']:DrawText('[E] - открыть меню крафта', 'bottom') end
                    if IsControlJustReleased(0, Keys["E"]) then
                        if canOpen or (#value.gangs==0 and #value.jobs == 0) then 
                            inUSe = true
                            exports['qb-core']:HideText()
                            openCraft(value)
                            Wait(1000)
                        else
                            QBCore.Functions.Notify('Вам недоступен данный стол', 'error', 7500)
                        end
                    end 
                
            else
                exports['qb-core']:HideText()
                inUSe = false
            end
        end 
       Wait(sleep)
    end
    
end)