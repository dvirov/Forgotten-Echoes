execute store result score #rng forgotten_echoes.temp run random value 0..1

execute if score #rng forgotten_echoes.temp matches 0 run function forgotten_echoes:forgotten_echoes/ghosts/type1
execute if score #rng forgotten_echoes.temp matches 1 run function forgotten_echoes:forgotten_echoes/ghosts/type1







