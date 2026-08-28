#as NPCs interaction 

execute store result score #rng forgotten_echoes.temp run random value 0..2

execute if score #rng forgotten_echoes.temp matches 0 run tag @s add type0
execute if score #rng forgotten_echoes.temp matches 1 run tag @s add type1
execute if score #rng forgotten_echoes.temp matches 2 run tag @s add type2
execute if score #rng forgotten_echoes.temp matches 3 run tag @s add type3
execute if score #rng forgotten_echoes.temp matches 4 run tag @s add type4
execute if score #rng forgotten_echoes.temp matches 5 run tag @s add type5
execute if score #rng forgotten_echoes.temp matches 6 run tag @s add type6
execute if score #rng forgotten_echoes.temp matches 7 run tag @s add type7
execute if score #rng forgotten_echoes.temp matches 8 run tag @s add type8
execute if score #rng forgotten_echoes.temp matches 9 run tag @s add type9
execute if score #rng forgotten_echoes.temp matches 10 run tag @s add type10
execute if score #rng forgotten_echoes.temp matches 11 run tag @s add type11







