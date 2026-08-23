
tag @s add forgotten_echoes.waiting_for_input


execute store result storage forgotten_echoes:temp entity_id int 1 run scoreboard players add #assign_id forgotten_echoes.entity_id 1
function forgotten_echoes:npc_dialog/create_bossbar with storage forgotten_echoes:temp







