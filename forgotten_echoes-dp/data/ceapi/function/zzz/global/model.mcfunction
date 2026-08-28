#if core doesnt exist anymore while aj is active, run this error
$execute unless entity $(EntityUUID) if entity @s[tag=!deathing] run function ceapi:global/anim/death with storage ceapi:temp args.basic

#make model at same position
$execute positioned as $(EntityUUID) rotated as $(EntityUUID) run tp @s ~ ~ ~ ~ 0

#entity logic loop
$execute as $(EntityUUID) at @s run function ceapi:global/entity

#entity logic on damage
$execute as $(EntityUUID) at @s if data entity @s {HurtTime:10s} run function ceapi:global/entity_onhurt with storage ceapi:temp args.onhurt

