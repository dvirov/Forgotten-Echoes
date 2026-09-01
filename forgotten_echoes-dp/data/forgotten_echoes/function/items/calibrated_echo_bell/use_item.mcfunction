advancement revoke @s only forgotten_echoes:trigger/use_calibrated_echo_bell

execute unless score @s forgotten_echoes.calibrated_echo_bell.cooldown matches ..0 run return fail

scoreboard players set @s forgotten_echoes.calibrated_echo_bell.cooldown 100


execute as @n[tag=fixed,distance=..32,type=interaction] at @s run function forgotten_echoes:items/calibrated_echo_bell/activate_redstone








