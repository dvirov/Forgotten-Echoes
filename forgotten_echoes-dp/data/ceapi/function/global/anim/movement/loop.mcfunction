#detect if boss is walking and switch between idle and walking animation
execute as @s store result score @s ceapi.movement.walkingSpeedX run data get entity @s Motion[0] 100
execute as @s store result score @s ceapi.movement.walkingSpeedZ run data get entity @s Motion[2] 100
scoreboard players set @s ceapi.movement.walkingSpeed 0
scoreboard players operation @s ceapi.movement.walkingSpeed += @s ceapi.movement.walkingSpeedX
scoreboard players operation @s ceapi.movement.walkingSpeed += @s ceapi.movement.walkingSpeedZ

execute unless score @s ceapi.movement.previousState matches 0 if score @s ceapi.movement.walkingSpeed matches 0 run function ceapi:global/anim/movement/idle with storage ceapi:temp args.movement
execute unless score @s ceapi.movement.previousState matches 1 unless score @s ceapi.movement.walkingSpeed matches 0 run function ceapi:global/anim/movement/walk with storage ceapi:temp args.movement
