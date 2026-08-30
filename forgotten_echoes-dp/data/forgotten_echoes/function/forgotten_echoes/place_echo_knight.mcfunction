execute if entity @s[type=marker] run kill @s


execute align xyz positioned ~.5 ~ ~.5 rotated 90 0 run function aj:echo_knight/summon {args:{animation:spawn}}
execute as @n[distance=..5,tag=aj.echo_knight.root,type=minecraft:item_display] at @s run rotate @s facing entity @n[type=minecraft:marker,tag=forgotten_echoes.direction_marker]
execute as @n[distance=..5,tag=aj.echo_knight.root,type=minecraft:item_display] at @s run rotate @s facing ^ ^ ^-1
kill @n[distance=0..,tag=forgotten_echoes.direction_marker,type=minecraft:marker] 



#execute as @n[distance=..5,tag=aj.ghost_villager_a.root,type=minecraft:item_display] at @s run rotate @s facing entity @p
