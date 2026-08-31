
execute store result score #rng forgotten_echoes.temp run random value 1..2



execute if score #rng forgotten_echoes.temp matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,uses:0,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:poisonous_potato",count:8,components:{item_name:"Soul Fragment",item_model:"forgotten_echoes:soul_fragment",custom_data:{id:"soul_fragment"},"minecraft:consumable":{animation:"none",consume_seconds:9999},"minecraft:use_effects":{can_sprint:1b,speed_multiplier:1,interact_vibrations:0b},rarity:"uncommon"}},sell:{id:"minecraft:poisonous_potato",count:1,components:{item_name:"Eternal Soul",item_model:"forgotten_echoes:eternal_soul",custom_data:{id:"eternal_soul"},"minecraft:consumable":{animation:"none",consume_seconds:9999},"minecraft:use_effects":{can_sprint:1b,speed_multiplier:1,interact_vibrations:0b},rarity:"rare"}}}