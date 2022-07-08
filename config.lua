Config = {}

Config = {
    BlipSprite = 237,
	BlipColor = 26,
	BlipText = 'Стол для крафта',
	
	
    Categories = {
    ----the image/cat folder should contain a png file of the same name---
    ['tools'] = {
        name = 'tools',
        label = 'Инструменты',
       
    },
    ['food'] = {
        name = 'food',
        label = 'Продукты питания',
        
    },
    ['drugs'] = {
        name = 'drugs',
        label = 'Наркотики',
       
    },
    ['weapons'] = {
        name = 'weapons',
        label = 'Оружие' ,
       
    },
    ['med'] = {
        name = 'med',
        label = 'Медикаменты' ,
        jobs = {'ambulance'}
    },
    
    },

    Items = {
        --drugs--
        ["drugs"] = {
            ['crack_baggy'] = {
                category = "drugs",
                name = 'crack_baggy',
                level = 0, -- From what level this item will be craftable
                amount = 1, -- The amount that will be crafted
                time = 20, -- Time in seconds it takes to craft this item
                items = { -- Ingredients needed to craft this item
                    ["cocaleaf"] = 4,
                    ["empty_weed_bag"] = 1,
                    ["benzoylecgonine"] = 1,
                },
            }, 
            ['cokebaggy'] = {
                name = 'cokebaggy',
                category = "drugs",
                level = 0, -- From what level this item will be craftable
                amount = 2, -- The amount that will be crafted
                time = 20, -- Time in seconds it takes to craft this item
                items = { -- Ingredients needed to craft this item
                    ["crack_baggy"] = 4,
                    ["empty_weed_bag"] = 2,
                    ["ester"] = 1,
                },
            },
            ['meth'] = {
                name = 'meth',
                level = 1, -- From what level this item will be craftable
                category = 'drugs', -- The category item will be put in
                amount = 5, -- The amount that will be crafted
                time = 20, -- Time in seconds it takes to craft this item
                items = { -- Ingredients needed to craft this item
                    ["hydrochloricacid"] = 4,
                    ["ephedrine"] = 2,
                    ["acetone"] = 2,
                    ["empty_weed_bag"] = 5,
                    ["oxy"] = 1
                },
            },	   
        },
        ['tools'] = {

            --hardware--
            ['lockpick'] = {
                name = 'lockpick',
                level = 0, -- From what level this item will be craftable
                category = 'tools', -- The category item will be put in
                amount = 1, -- The amount that will be crafted
                time = 10, -- Time in seconds it takes to craft this item
                items = { -- Ingredients needed to craft this item
                    ['aluminum'] = 12,
                    ['steel'] = 8,
                    ['rubber'] = 2, -- item name and count, adding items that dont exist in database will crash the script
                }
            }, 
        },
    },
    
    Locations = {
        [1] = {
            coords = vector3(52.45, -2682.11, 6.01), 
            jobs = {}, 
            gangs = {}, 
            blip = true, 
            recipes = {}, 
            radius = 1.5,
            items = {'crack_baggy', 'lockpick'} 
        }
    }
}
--		{coords = vector3(892.85, -960.82, 39.28), jobs = {}, gangs = {}, blip = false, recipes = {'meth'}, radius = 1.5 },
