#execute at @n[type=marker,tag=test] positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0] run say damage

execute as @e[type=#forgotten_echoes:all_relevant] run function forgotten_echoes:entity_main

#function forgotten_echoes:npc_dialog/modify_bossbar