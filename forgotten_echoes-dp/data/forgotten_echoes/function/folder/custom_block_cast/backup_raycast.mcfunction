
scoreboard players operation #ray_distance forgotten_echoes.value = #ray_distance_backup forgotten_echoes.value
scoreboard players add #cast_try forgotten_echoes.value 1

execute if score #cast_try forgotten_echoes.value matches 1 positioned ^0.3 ^ ^ run function forgotten_echoes:folder/custom_block_cast/raycast
execute if score #cast_try forgotten_echoes.value matches 2 positioned ^-0.3 ^ ^ run function forgotten_echoes:folder/custom_block_cast/raycast
execute if score #cast_try forgotten_echoes.value matches 3 positioned ^ ^0.3 ^ run function forgotten_echoes:folder/custom_block_cast/raycast
execute if score #cast_try forgotten_echoes.value matches 4 positioned ^ ^-0.3 ^ run function forgotten_echoes:folder/custom_block_cast/raycast
