$execute as $(EntityUUID) run tag @s add attacking
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/stun/tween {to_frame:0,duration:0}

particle minecraft:crit ~ ~1 ~ 0.6 0.6 0.6 0.7 30

