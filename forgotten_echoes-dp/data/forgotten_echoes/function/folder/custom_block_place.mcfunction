advancement revoke @s only forgotten_echoes:trigger/custom_block_place



# set the raycast distance
scoreboard players set #ray_distance forgotten_echoes.value 100

# save copy of the raycast distance and run the raycst 
scoreboard players operation #ray_distance_backup forgotten_echoes.value = #ray_distance forgotten_echoes.value
scoreboard players set #cast_try forgotten_echoes.value 0

data modify storage forgotten_echoes:temp custom_block set from entity @s SelectedItem.components.minecraft:custom_data.custom_block.func_path
execute anchored eyes run function forgotten_echoes:folder/custom_block_cast/raycast
data remove storage forgotten_echoes:temp custom_block
