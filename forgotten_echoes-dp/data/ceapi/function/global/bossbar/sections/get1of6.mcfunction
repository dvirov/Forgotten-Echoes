$scoreboard players set $1 ceapi.temp $(6of6)
scoreboard players set $2 ceapi.temp 6

execute store result storage ceapi:phasedata args.bossbar.1of6 int 1 run scoreboard players operation $1 ceapi.temp /= $2 ceapi.temp
