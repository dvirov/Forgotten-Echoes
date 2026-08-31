# runs every tick as interaction with tag waiting_for_inputforgotten_echoes-dp/data/forgotten_echoes/function/npc_dialog/type0/quest_success.mcfunction
execute store result storage forgotten_echoes:temp entity_id int 1 run scoreboard players get @s forgotten_echoes.entity_id
execute store result storage forgotten_echoes:temp timer int 1 run scoreboard players remove @s forgotten_echoes.quest_timer 1
function forgotten_echoes:npc_dialog/modify_bossbar with storage forgotten_echoes:temp


execute if score @s forgotten_echoes.quest_timer matches -1 as @n[tag=aj.ghost_villager_a.root] run function aj:ghost_villager_a/animations/despawn/play_exclusive

