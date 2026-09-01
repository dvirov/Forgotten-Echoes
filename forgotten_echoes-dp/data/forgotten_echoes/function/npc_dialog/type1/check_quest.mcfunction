# on interaction 
scoreboard players add @s forgotten_echoes.dialog_line 1

function forgotten_echoes:npc_dialog/type1/dialog_start



execute if entity @s[tag=forgotten_echoes.waiting_for_input] on target unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:"broken_stone_tool"}] as @n[tag=aj.ghost_villager_a.root,distance=..10,type=item_display] run function aj:ghost_villager_a/animations/no/play_exclusive
execute if entity @s[tag=forgotten_echoes.waiting_for_input] on target if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"broken_stone_tool"}] run function forgotten_echoes:npc_dialog/quest_success
