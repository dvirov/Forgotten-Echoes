data merge entity @s {width:0,height:0}
data remove entity @s attack

$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/attack$(reaction_hit)/play with storage ceapi:temp args
$execute as $(ModelUUID) at @s run particle minecraft:trial_omen ~ ~1 ~ 1.5 1.5 1.5 0.7 60
$execute as $(ModelUUID) at @s run particle flash{color:[0.290,0.976,1.000,1.00]} ~ ~1 ~ 1 1 1 1 5
