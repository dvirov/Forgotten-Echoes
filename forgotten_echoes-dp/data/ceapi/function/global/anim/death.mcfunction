
$execute as $(ModelUUID) if entity @s[tag=deathing] run return fail

function ceapi:tools/attribute/nomove/off

tag @s add deathing
$tag $(ModelUUID) add deathing

$function ceapi:tools/color/reset {ModelUUID:"$(ModelUUID)"}
function ceapi:global/bossbar/remove with storage ceapi:temp args.bossbar

$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/death/tween {to_frame:0,duration:0}
