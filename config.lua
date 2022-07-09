Config = {}

Config = {
    BlipSprite = 237,
	BlipColor = 26,
	BlipText = 'Стол для крафта',
	
    addReput = 5,
	
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
		['materials'] = {
			Label = 'Материалы',
			Jobs = {'garbage'}
		},
    
    },

    Items = {
		['weapons'] = {
        --weapons---
			['weapon_knuckle'] = { 
				name = 'weapon_knuckle',
				level = 0, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['steel'] = 10,
					['rubber'] = 2,
					['metalscrap'] = 5, -- item name and count, adding items that dont exist in database will crash the script
					},
				},
			['weapon_switchblade'] = { 
					name = 'weapon_switchblade',
					level = 0, -- From what level this item will be craftable
					category = 'weapons', -- The category item will be put in
					amount = 1, -- The amount that will be crafted
					time = 30, -- time in seconds it takes to craft this item
					items = { -- items needed to craft this item
						['steel'] = 15,
						['plastic'] = 5, 
						['metalscrap'] = 5,  --item name and count, adding items that dont exist in database will crash the script
						},
					},
			['weapon_pistol'] = {
				name = 'weapon_pistol',
				level = 0, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 35,
					["metalscrap"] = 20,
				
					["plastic"] = 15,
					["aluminum"] = 15, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['weapon_microsmg'] = {
				name = 'weapon_microsmg',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 45,
					["metalscrap"] = 35,
				
					["plastic"] = 25,
					["aluminum"] = 30,  -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['weapon_minismg'] = {
				name = 'weapon_minismg',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 45,
					["metalscrap"] = 35,
			
					["plastic"] = 25,
					["aluminum"] = 30,  -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['weapon_machinepistol'] = {
				name = 'weapon_machinepistol',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["metalscrap"] = 35,
					["steel"] = 45,
					["plastic"] = 25,
					["aluminum"] = 30,  -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['pistol_suppressor'] = {
				name = 'pistol_suppressor',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 20,
					['steel'] = 55,
					['rubber'] = 5,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['pistol_extendedclip'] = {
				name = 'pistol_extendedclip',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 50,
					['steel'] = 75,
					['rubber'] = 10,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['assaultrifle_extendedclip'] = {
				name = 'assaultrifle_extendedclip',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 115,
					['steel'] = 175,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},	
			['weapon_assaultrifle'] = {
				name = 'assaultrifle_extendedclip',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 85,
					["metalscrap"] = 60,
					["plastic"] = 45,
					["aluminum"] = 30,   -- item name and count, adding items that dont exist in database will crash the script
				}	
			},
			['smg_extendedclip'] = {
				name = 'assaultrifle_extendedclip',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 90,
					['steel'] = 135,
					['rubber'] = 7,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['smg_scope'] = {
				name = 'smg_scope',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 120,
					['steel'] = 165,
					['rubber'] = 15,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['microsmg_extendedclip'] = {
				name = 'microsmg_extendedclip',

				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 90,
					['steel'] = 135,
					['rubber'] = 9,
					-- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['pistol_ammo'] = {
				name = 'pistol_ammo',
				level = 0, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 3, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['steel'] = 2,
					['gunpowder'] = 5,
					['aluminum'] = 1, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['smg_ammo'] = {
				name = 'smg_ammo',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 3, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['steel'] = 3,
					["gunpowder"] = 8,
					['aluminum'] = 2, -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['box_pistols'] = {
				name = 'box_pistols',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 190,
					["metalscrap"] = 120,
				
					["plastic"] = 80,
					["aluminum"] = 110, 
					["wood_proc"] = 5,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},


			['box_smgs'] = {
				name = 'box_smgs',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["iron"] = 260,
					["metalscrap"] = 160,
				
					["plastic"] = 110,
					["aluminum"] = 160, 
					["wood_proc"] = 6,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['box_assaultrifles'] = {
				name = 'box_assaultrifles',
				level = 3, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 280,
					["metalscrap"] = 170,
				
					["plastic"] = 120,
					["aluminum"] = 170, 
					["wood_proc"] = 7,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			---ammo--
			['box_pistol_ammo'] = {
				name = 'box_pistol_ammo',
				level = 1, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 100,
					["metalscrap"] = 120,
					["gunpowder"] = 50,
					["wood_proc"] = 2,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['box_smg_ammo'] = {
				name = 'box_smg_ammo',
				level = 2, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
				
					["steel"] = 130,
					["metalscrap"] = 120,
					["gunpowder"] = 60,
					["wood_proc"] = 2,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['box_fifle_ammo'] = {
				name = 'box_fifle_ammo',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 150,
					["metalscrap"] = 120,
					["gunpowder"] = 70,
					["wood_proc"] = 2,    -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			
			['rifle_ammo'] = {
				name = 'rifle_ammo',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					['steel'] = 5,
					["gunpowder"] = 12,
					['aluminum'] = 3,    -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},

			['shotgun_ammo'] = {
				name = 'shotgun_ammo',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					['steel'] = 5,
					["gunpowder"] = 12,
					['aluminum'] = 3,    -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},
			
			['weapon_specialcarbine'] = {
				name = 'weapon_specialcarbine',

				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 75,
					["metalscrap"] = 60,
					["plastic"] = 80,
					["aluminum"] = 50, 
					["rubber"] = 10  -- item name and count, adding items that dont exist in database will crash the script
				}
			},

			['weapon_heavyshotgun'] = {
				name = 'weapon_heavyshotgun',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 75,
					["metalscrap"] = 60,
					["plastic"] = 80,
					["aluminum"] = 50, 
					["rubber"] = 10  -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},
			
			

			['weapon_gusenberg'] = {
				name = 'weapon_gusenberg',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 65,
					["metalscrap"] = 60,
					["plastic"] = 80,
					["aluminum"] = 40,    -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},

			['weapon_sawnoffshotgun'] = {
				name = 'weapon_gusenberg',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 65,
					["metalscrap"] = 60,
					["plastic"] = 80,
					["aluminum"] = 40,    -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},

			['mg_ammo'] = {
				name = 'mg_ammo',
				level = 5, -- From what level this item will be craftable
				category = 'weapons', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 5,
					["gunpowder"] = 10,
				
					["aluminum"] = 3,    -- item name and count, adding items that dont exist in database will crash the script
				
				}
			},
		},
        --drugs--
        ["drugs"] = {
            ['crack_baggy'] = {
                category = "drugs",
                name = 'crack_baggy',
                level = 0, -- From what level this item will be craftable
                amount = 1, -- The amount that will be crafted
                time = 20, -- time in seconds it takes to craft this item
                items = { -- items needed to craft this item
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
                time = 20, -- time in seconds it takes to craft this item
                items = { -- items needed to craft this item
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
                time = 20, -- time in seconds it takes to craft this item
                items = { -- items needed to craft this item
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
                time = 10, -- time in seconds it takes to craft this item
                items = { -- items needed to craft this item
                    ['aluminum'] = 12,
                    ['steel'] = 8,
                    ['rubber'] = 2, -- item name and count, adding items that dont exist in database will crash the script
                }
            },
			['screwdriverset'] = {
				name = 'screwdriverset',
				level = 0, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['metalscrap'] = 10,
					['steel'] = 25, 
					["rubber"] = 5, -- item name and count, adding items that dont exist in database will crash the script
				}
			}, 
			['electronickit'] = {
				name = 'electronickit',
				level = 1, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["metalscrap"] = 30,
					["plastic"] = 45,
					["rawgold"] = 5,
					["aluminum"] = 28, -- item name and count, adding items that dont exist in database will crash the script 
				}
			},
			['radioscanner'] = {
				name = 'radioscanner',
				level = 2, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["electronickit"] = 2,
					["plastic"] = 55,
					["steel"] = 40, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['gatecrack'] = {
				name = 'gatecrack',
				level = 1, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["metalscrap"] = 10,
					["plastic"] = 50,
					["aluminum"] = 30,
					["steel"] = 17,
					["electronickit"] = 1, -- item name and count, adding items that dont exist in database will crash the script
				}
			}, 
			['handcuffs'] = {
				name = 'handcuffs',
				level = 1, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 40, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["metalscrap"] = 36,
					["steel"] = 24,
					["aluminum"] = 28, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['advancedrepairkit_plane'] = {
				name = 'handcuffs',
				level = 0, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["metalscrap"] = 32,
					["steel"] = 43,
					["glass"] = 10,
					["plastic"] = 61, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
	
			['ironoxide'] = {
				name = 'ironoxide',
				level = 0, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["steel"] = 60,
					["glass"] = 30, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['aluminumoxide'] = {
				name = 'aluminumoxide',
				level = 0, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["aluminum"] = 60,
					["glass"] = 30, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['armor'] = {
				name = 'armor',
				level = 1, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 60, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 77,
					["plastic"] = 55,
					["aluminum"] = 22, -- item name and count, adding items that dont exist in database will crash the script
				}
			},
			['drill'] = {
				name = 'drill',
				level = 1, -- From what level this item will be craftable
				category = 'tools', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					
					["steel"] = 100,
					["screwdriverset"] = 3,
					["electronickit"] = 1 -- item name and count, adding items that dont exist in database will crash the script
				}
			}, 
        },
		['food'] = {
			--FOOD---
			['cocktail_otvertka'] = {
				name = 'cocktail_otvertka',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 4, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['vodka'] = 1,
					['orangejuice'] = 1,
					['orange'] = 1,
					['ice'] = 4, -- item name and count, adding items that dont exist in database will crash the script
				},
			},
			['mojito'] = {
				name = 'mojito',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 4, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['sugar_sirop'] = 1,
					['lime'] = 1,
					['white_rom'] = 1,
					['mint_leaves'] = 1,
					['sodawater'] = 1,
					['ice'] = 4, -- item name and count, adding items that dont exist in database will crash the script
				},
			},
			['aperol_syringe'] = {
				name = 'aperol_syringe',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 4, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['aperol'] = 1,
					['prosecco'] = 1,
					['orange'] = 1,
					['sodawater'] = 1,
					['ice'] = 4, -- item name and count, adding items that dont exist in database will crash the script
				},
			},
			['flour'] = {
				name = 'flour',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 10, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['wheat'] = 2,
					
				},
			},
			['pasta'] = {
				name = 'pasta',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['flour'] = 1,
					['water_bottle'] = 1,
					
				},
			},
			['pizza'] = {
				name = 'pizza',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 1, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['flour'] = 1,
					['water_bottle'] = 1,
					
				},
			},

			['role_f'] = {
				name = 'role_f',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['rice'] = 1,
					['fillet_fish'] = 2,
					
				},
			},

			['fish_wok'] = {
				name = 'fish_wok',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['flour'] = 1,
					['fillet_fish'] = 2,
					
				},
			},

			['sake'] = {
				name = 'sake',
				level = 0, -- From what level this item will be craftable
				category = 'food', -- The category item will be put in
				amount = 2, -- The amount that will be crafted
				time = 30, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['rice'] = 2,
					['water_bottle'] = 5,
					['yeasts'] = 1
					
				},
			},
		},
		['materials'] = {
			---materials---	
			['plastic'] = {
				name = 'plastic',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["empty_plastic_bottle"] = 10,
				},
			},
			['glass'] = {
				name = 'glass',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["empty_bottle"] = 10,
				},
			},

			['rubber'] = {
				name = 'rubber',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 3, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["tire"] = 1,
				},
			},
			---'coper', 'iron', 'steel', 'aluminum'---
			['copper'] = {
				name = 'copper',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["coper_ore"] = 10,
					["nitric_acid"] = 1,
					
				},
			},
			['steel'] = {
				name = 'steel',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["iron_ore"] = 10,
					["nitric_acid"] = 1,
					
				},
			},
			['aluminum'] = {
				name = 'aluminum',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["aluminum_ore"] = 10,
					["aluminum_chloride"] = 1,
					
				},
			},
			['cloth'] = {
				name = 'cloth',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					["cotton"] = 20,
				},
			},
			['box_clothes'] = {
				name = 'cloth',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 5, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['cloth'] = 10,
				},
			},
			['wood_proc'] = {
				name = 'wood_proc',
				level = 0, -- From what level this item will be craftable
				category = 'materials', -- The category item will be put in
				amount = 4, -- The amount that will be crafted
				time = 20, -- time in seconds it takes to craft this item
				items = { -- items needed to craft this item
					['wood_cut'] = 1,
				},
			},
		}
    },
    
    Locations = {
		{coords = vector3(130.01, -1282.14, 29.27), jobs = 'vu', blip = false, items = {'cocktail_otvertka', 'aperol_syringe', 'mojito'}, radius = 1.5 },
		{coords = vector3(415.81, -1501.79, 31.16), jobs = {}, gangs = 'mafia', blip = false, items = {'flour', 'pasta', 'pizza'}, radius = 1.5 },

		{coords = vector3(-174.55, 302.37, 97.46), jobs = {}, gangs = 'yakuza', blip = false, items = {'flour','sake', 'role_f', 'fish_wok'}, radius = 1.5 },



		{coords = vector3(4909.34, -5835.02, 28.22), jobs = {}, gangs = {'cartel'}, blip = false, items = {'box_pistols','box_smgs', 'box_assaultrifles', 'box_pistol_ammo', 'box_smg_ammo', 'box_fifle_ammo', 'pistol_suppressor', 'pistol_extendedclip', 'assaultrifle_extendedclip', 'smg_extendedclip', 'smg_scope', 'microsmg_extendedclip' }, radius = 1.5 },
		{coords = vector3(-50.85, 1911.25, 195.36), jobs = {}, gangs = {}, blip = false, items = {'lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(52.45, -2682.11, 6.01), jobs = {}, gangs = {}, blip = true, items = {'lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs', 'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 2.5 },
		{coords = vector3(-327.02, -2437.76, 7.36), jobs = {}, gangs = {}, blip = false, items = {'crack_baggy', 'cokebaggy'}, radius = 1.5 },
		{coords = vector3(892.85, -960.82, 39.28), jobs = {}, gangs = {}, blip = false, items = {'meth'}, radius = 1.5 },
		{coords = vector3(110.74, -1981.05, 20.96), jobs = {}, gangs = {'ballas'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_microsmg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(332.02, -2013.68, 22.58), jobs = {}, gangs = {'vagos'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_machinepistol', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(-134.76, -1609.67, 35.03), jobs = {}, gangs = {'families'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_machinepistol', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(998.42, -120.52, 74.06), jobs = {}, gangs = {'lostmc'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_sawnoffshotgun', 'shotgun_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(415.38, -1506.32, 33.81), jobs = {}, gangs = {'mafia'}, blip = false, items = {'mg_ammo', 'weapon_gusenberg', 'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(-809.23, 190.05, 72.48), jobs = {}, gangs = {'rm'}, blip = false, items = {'rifle_ammo', 'weapon_assaultrifle', 'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(2521.74, 4106.27, 35.59), jobs = {}, gangs = {'hn'}, blip = false, items = {'weapon_heavyshotgun', 'shotgun_ammo', 'weapon_sawnoffshotgun','weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(266.07, -1811.66, 26.91), jobs = {}, gangs = {'wcr'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords =  vector3(-877.07, 55.94, 48.75), jobs = {}, gangs = {'is'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_minismg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
        {coords = vector3(-172.68, 310.89, 97.99), jobs = {}, gangs = {'yakuza'}, blip = false, items = {'weapon_specialcarbine', 'rifle_ammo', 'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_microsmg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(1438.84, -1490.43, 66.62), jobs = {}, gangs = {'mg'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'weapon_microsmg', 'smg_ammo','lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(2228.47, 5606.18, 54.87), jobs = {}, gangs = {'redneck'}, blip = false, items = {'weapon_pistol', 'pistol_ammo', 'weapon_knuckle', 'weapon_switchblade', 'lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },
		{coords = vector3(1997.38, 3049.04, 50.42) , jobs = {}, gangs = {'baphomet'}, blip = false, items = {'weapon_pistol', 'weapon_combatshotgun', 'weapon_dbshotgun',  'pistol_ammo', 'shotgun_ammo','weapon_knuckle', 'weapon_switchblade', 'lockpick', 'screwdriverset', 'electronickit', 'radioscanner', 'gatecrack', 'handcuffs',  'ironoxide', 'aluminumoxide', 'armor', 'drill'}, radius = 1.5 },



		{coords = vector3(-1648.26, -3165.24, 13.99), jobs = {'pilot'}, gangs = {}, blip = false, items = {'advancedrepairkit_plane', }, radius = 1.5 },
		
		{coords = vector3(-601.64, -1602.39, 31.41), jobs = {'garbage'}, gangs = {}, blip = false, items = {'plastic', 'glass', 'rubber' }, radius = 1.5 },
		{coords = vector3(1118.35, -2002.52, 36.48), jobs = {'miner'}, gangs = {}, blip = false, items = {'copper', 'steel', 'aluminum' }, radius = 1.5 },
		{coords = vector3(715.71, -962.1, 31.4), jobs = {'tailor'}, gangs = {}, blip = false, items = {'box_clothes', 'cloth'}, radius = 1.5 },

        
    }
}
--		{coords = vector3(892.85, -960.82, 39.28), jobs = {}, gangs = {}, blip = false, items = {'meth'}, radius = 1.5 },
