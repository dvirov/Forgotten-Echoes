$execute store result score $1 ceapi.temp run data get entity @s data.bossbar.$(transition_type)
execute store result score $2 ceapi.temp run scoreboard players get @s ceapi.ce.health

execute if score $2 ceapi.temp <= $1 ceapi.temp run return run scoreboard players set $success ceapi.temp 1
return run scoreboard players set $success ceapi.temp 0
