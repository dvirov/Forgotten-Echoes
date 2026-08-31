
execute as @e[type=item_display,tag=slowcast,scores={slowcast.duration=1..}] at @s run function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/duration

execute if entity @n[type=item_display,tag=slowcast] run schedule function forgotten_echoes:forgotten_echoes/boss_attacks/echo_knight/temp_tick 1t