# runs every tick as interaction with tag waiting_for_inputforgotten_echoes-dp/data/forgotten_echoes/function/npc_dialog/type0/quest_success.mcfunction

execute if score @s forgotten_echoes.quest_timer matches -1 as @n[tag=aj.ghost_villager_a.root] run function aj:ghost_villager_a/animations/despawn/play_exclusive

