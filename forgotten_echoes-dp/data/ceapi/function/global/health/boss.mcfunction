
#grab how much health the entity has
execute store result score $temp1 ceapi.ce.health run data get entity @s Health
#grab how much max health the entity should have
scoreboard players set $temp2 ceapi.ce.health 1024

#to find how much damage it took, do max hp - current hp
scoreboard players operation $temp2 ceapi.ce.health -= $temp1 ceapi.ce.health

#then set entity's score of health entity's stored current health - damage
scoreboard players operation @s ceapi.ce.health -= $temp2 ceapi.ce.health

#reflect this score onto bossbar
function ceapi:global/bossbar/update with storage ceapi:temp args.bossbar

#reset extra variables
scoreboard players reset $temp1 ceapi.ce.health
scoreboard players reset $temp2 ceapi.ce.health

#reset our health to 1024
data modify entity @s Health set value 1024

#check for other phase transitions
$execute unless data storage ceapi:temp {args:{phase:{current:$(max)}}} run function ceapi:global/health/transition/check {transition_type:"$(transition_type)"}
$execute unless data storage ceapi:temp {args:{phase:{current:$(max)}}} if function ceapi:global/health/transition/try run return run function ceapi:global/anim/phase_transition with storage ceapi:temp args.phase

#if our health is less than zero and our phase_transition IS set to 0/6, then play phase_transition
$execute if score @s ceapi.ce.health matches ..0 unless data entity @s {data:{phase:{current:$(max)}}} if data entity @s {data:{phase:{transition_type:"0of6"}}} run return run function ceapi:global/anim/phase_transition with storage ceapi:temp args.phase

#if our health is less than zero and our phase_transition IS NOT set to 0/6, then play death
$execute if score @s ceapi.ce.health matches ..0 if data storage ceapi:temp {args:{phase:{current:$(max)}}} run function ceapi:global/anim/death with storage ceapi:temp args.onhurt

