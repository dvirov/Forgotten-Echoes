
execute if entity @s[type=marker,tag=forgotten_echoes.marker] run function forgotten_echoes:forgotten_echoes/custom_blocks/tick_place
execute if entity @s[scores={forgotten_echoes.calibrated_echo_bell.cooldown=1},type=interaction] at @s run function forgotten_echoes:items/calibrated_echo_bell/deactivate
execute if entity @s[scores={forgotten_echoes.calibrated_echo_bell.cooldown=1..}] run scoreboard players remove @s forgotten_echoes.calibrated_echo_bell.cooldown 1





#execute if entity @s[scores={forgotten_echoes.dialog_timer=0..},type=interaction] at @s run scoreboard players add @s forgotten_echoes.dialog_timer 1


