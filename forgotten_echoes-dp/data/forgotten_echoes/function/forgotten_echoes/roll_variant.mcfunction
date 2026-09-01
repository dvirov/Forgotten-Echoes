#as NPCs root display

execute store result score #rng forgotten_echoes.temp run random value 1..7


execute if score #rng forgotten_echoes.temp matches 1 run function aj:ghost_villager_a/variants/1/apply
execute if score #rng forgotten_echoes.temp matches 2 run function aj:ghost_villager_a/variants/2/apply
execute if score #rng forgotten_echoes.temp matches 3 run function aj:ghost_villager_a/variants/3/apply
execute if score #rng forgotten_echoes.temp matches 4 run function aj:ghost_villager_a/variants/4/apply
execute if score #rng forgotten_echoes.temp matches 5 run function aj:ghost_villager_a/variants/5/apply
execute if score #rng forgotten_echoes.temp matches 6 run function aj:ghost_villager_a/variants/6/apply
execute if score #rng forgotten_echoes.temp matches 7 run function aj:ghost_villager_a/variants/7/apply







