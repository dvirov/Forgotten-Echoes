$scoreboard players set $1 ceapi.temp $(2of6)
$scoreboard players set $2 ceapi.temp $(1of6)

execute store result storage ceapi:phasedata args.bossbar.3of6 int 1 run scoreboard players operation $1 ceapi.temp += $2 ceapi.temp
