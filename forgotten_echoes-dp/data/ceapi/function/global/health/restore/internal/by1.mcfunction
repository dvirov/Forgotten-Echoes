$execute if score @s ceapi.ce.health matches $(max).. run scoreboard players set @s ceapi.ce.health $(max)

$execute store result bossbar $(id) value run scoreboard players get @s ceapi.ce.health

