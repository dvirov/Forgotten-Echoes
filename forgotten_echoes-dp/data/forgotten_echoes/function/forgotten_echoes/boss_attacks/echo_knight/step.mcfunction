scoreboard players remove steps temp 1

#particle flame ~ ~ ~ .1 .1 .1 0 1


execute unless block ~ ~ ~ #air run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/hit

execute positioned ~-.4 ~-.4 ~-.4 as @e[dx=-.2,type=!#forgotten_echoes:mace_throw_ignore] run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/hit
#execute as @e[type=!#forgotten_echoes:mace_throw_ignore,dx=0] positioned ~-.5 ~-.5 ~-.5 if entity @s[dx=0] run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/hit

tp ~ ~-0.05 ~

execute if score steps temp matches 1.. positioned ^ ^ ^.1 run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/step

