playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 3 2 0
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/phase$(current)end/tween {to_frame:0,duration:0}
$execute as $(ModelUUID) run tag @s remove looknearest
$execute as $(ModelUUID) run tag @s remove attacking
tag @s add phasing

