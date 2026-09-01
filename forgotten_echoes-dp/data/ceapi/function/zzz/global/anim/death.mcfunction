$execute as $(ModelUUID) if entity @s[tag=deathing] run return fail 

#if boss, kill all minions
execute if data entity @s {data:{type:"boss"}} as @e[tag=boss_minion] run kill @s

tag @s add deathing
$tag $(ModelUUID) add deathing

$function ceapi:tools/color/reset {ModelUUID:"$(ModelUUID)"}
function ceapi:global/bossbar/remove with entity @s data.bossbar

$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/death/tween {to_frame:0,duration:0}
