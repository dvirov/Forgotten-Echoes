
scoreboard players remove #ray_distance forgotten_echoes.value 1

##
#particle flame
##
execute if block ~ ~ ~ andesite_wall[north=none,south=none,east=none,west=none,up=false] run return run function forgotten_echoes:folder/custom_block_cast/custom_block_set with storage forgotten_echoes:temp

execute if score #ray_distance forgotten_echoes.value matches 1.. positioned ^ ^ ^0.1 run function forgotten_echoes:folder/custom_block_cast/raycast
execute if score #ray_distance forgotten_echoes.value matches ..0 at @s anchored eyes run function forgotten_echoes:folder/custom_block_cast/backup_raycast

