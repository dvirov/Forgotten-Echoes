$scoreboard players add @s ceapi.ce.health $(heal)
execute if entity @s[tag=boss] run function ceapi:global/health/restore/internal/by1 with entity @s data.bossbar
execute if entity @s[tag=!boss] run function ceapi:global/health/restore/internal/by2 with entity @s data.health
