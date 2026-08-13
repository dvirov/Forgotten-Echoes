
execute on target unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:"key"}] run return fail 
execute if score @s[tag=forgotten_echoes.dialog0] forgotten_echoes.dialog_timer matches 660..860 run function forgotten_echoes:npc_dialog/type1/quest_completed_quickly
execute if score @s[tag=forgotten_echoes.dialog0] forgotten_echoes.dialog_timer matches 861.. run function forgotten_echoes:npc_dialog/type1/quest_completed
#execute if score @s forgotten_echoes.dialog_timer matches 861.. run function forgotten_echoes:npc_dialog/type1/quest_failed

