
execute store result score #rng forgotten_echoes.temp run random value 1..6

 
execute if score #rng forgotten_echoes.temp matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:5,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:poisonous_potato",count:5,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}


execute if score #rng forgotten_echoes.temp matches 2 run data modify entity @s Offers.Recipes prepend value {maxUses:4,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Broken Stone Tool",item_model:"forgotten_echoes:broken_stone_tool",custom_data:{id:"broken_stone_tool"},"!minecraft:consumable":{},rarity:"uncommon",}},sell:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}


execute if score #rng forgotten_echoes.temp matches 3 run data modify entity @s Offers.Recipes prepend value {maxUses:5,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:amethyst_shard",count:16},sell:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}

execute if score #rng forgotten_echoes.temp matches 4 run data modify entity @s Offers.Recipes prepend value {maxUses:5,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:mourner_pottery_sherd",count:2},sell:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}


execute if score #rng forgotten_echoes.temp matches 5 run data modify entity @s Offers.Recipes prepend value {maxUses:5,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:enchanted_golden_apple",count:1},sell:{id:"minecraft:poisonous_potato",count:16,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}



execute if score #rng forgotten_echoes.temp matches 6 run data modify entity @s Offers.Recipes prepend value {maxUses:5,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:pearlescent_froglight",count:4},sell:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Echo Gold Ingot",item_model:"forgotten_echoes:echo_gold",custom_data:{id:"echo_gold_ingot"},"!minecraft:consumable":{},rarity:"uncommon"}}}