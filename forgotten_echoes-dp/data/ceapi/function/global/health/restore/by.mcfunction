$scoreboard players add @s ceapi.ce.health $(heal)
data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/all with storage ceapi:temp args
execute if entity @s[tag=boss] run function ceapi:global/health/restore/internal/by1 with storage ceapi:temp args.bossbar
execute if entity @s[tag=!boss] run function ceapi:global/health/restore/internal/by2 with storage ceapi:temp args.health

