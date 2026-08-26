# on interaction 
scoreboard players add @s forgotten_echoes.dialog_line 1


function forgotten_echoes:npc_dialog/type1/dialog_controller






execute if entity @s[tag=forgotten_echoes.waiting_for_input] on target unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:"key"}] as @n[tag=aj.ghost_villager_a.root,distance=..10,type=item_display] run say wrong item
execute if entity @s[tag=forgotten_echoes.waiting_for_input] on target unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:"key"}] as @n[tag=aj.ghost_villager_a.root,distance=..10,type=item_display] run return run function aj:ghost_villager_a/animations/no/play_exclusive
execute if score @s[tag=forgotten_echoes.dialog0] forgotten_echoes.quest_timer matches 1900.. run function forgotten_echoes:npc_dialog/type1/quest_completed_quickly
execute if score @s[tag=forgotten_echoes.dialog0] forgotten_echoes.quest_timer matches ..1899 run function forgotten_echoes:npc_dialog/type1/quest_completed
#execute if score @s forgotten_echoes.dialog_timer matches 861.. run function forgotten_echoes:npc_dialog/type1/quest_failed

