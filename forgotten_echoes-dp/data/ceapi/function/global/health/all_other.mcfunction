#grab how much health the entity has
execute store result score $temp1 ceapi.ce.health run data get entity @s Health
#grab how much max health the entity should have
scoreboard players set $temp2 ceapi.ce.health 1024

#to find how much damage it took, do max hp - current hp
scoreboard players operation $temp2 ceapi.ce.health -= $temp1 ceapi.ce.health

#then set entity's score of health entity's stored current health - damage
scoreboard players operation @s ceapi.ce.health -= $temp2 ceapi.ce.health

#reset extra variables
scoreboard players reset $temp1 ceapi.ce.health
scoreboard players reset $temp2 ceapi.ce.health


#if our health is less than 0, play death
execute if score @s ceapi.ce.health matches ..0 run return run function ceapi:global/anim/death with storage ceapi:temp args.onhurt

#if we didnt just die then reset our health to 1024
data modify entity @s Health set value 1024
