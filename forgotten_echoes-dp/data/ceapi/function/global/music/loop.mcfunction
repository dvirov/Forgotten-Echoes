scoreboard players add @s ceapi.ce.music 1
$execute at @s if score @s ceapi.ce.music matches 1 run execute as @a[distance=..$(distance)] at @s run playsound $(sound) record @s ~ ~ ~ 1 1 0.1
$execute if score @s ceapi.ce.music matches $(max).. run scoreboard players set @s ceapi.ce.music 0
