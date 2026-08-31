scoreboard players remove @s slowcast.duration 1

scoreboard players operation steps temp = @s slowcast.steps
execute positioned ^ ^ ^.1 run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/step

execute unless score @s slowcast.duration matches 1.. run kill