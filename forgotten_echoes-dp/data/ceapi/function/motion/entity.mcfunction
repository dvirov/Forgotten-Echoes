#save pos of entity
execute store result score @s ceapi.entity_motion.internal.pos1.x run data get entity @s Pos[0] 100000
execute store result score @s ceapi.entity_motion.internal.pos1.y run data get entity @s Pos[1] 100000
execute store result score @s ceapi.entity_motion.internal.pos1.z run data get entity @s Pos[2] 100000

#add 1.7 to the y cuz
scoreboard players add @s ceapi.entity_motion.internal.pos1.y 170000

#spawn locator entity infront of face of entity
execute positioned ~ ~1.7 ~ positioned ^ ^ ^2 run summon item_display ~ ~ ~ {Tags:["ceapi.entity.motion.loc"]}

#save pos of locator
execute positioned ~ ~1.7 ~ positioned ^ ^ ^1 as @n[tag=ceapi.entity.motion.loc] at @s store result score @s ceapi.entity_motion.internal.pos2.x run data get entity @s Pos[0] 100000
execute positioned ~ ~1.7 ~ positioned ^ ^ ^1 as @n[tag=ceapi.entity.motion.loc] at @s store result score @s ceapi.entity_motion.internal.pos2.y run data get entity @s Pos[1] 100000
execute positioned ~ ~1.7 ~ positioned ^ ^ ^1 as @n[tag=ceapi.entity.motion.loc] at @s store result score @s ceapi.entity_motion.internal.pos2.z run data get entity @s Pos[2] 100000

#calculate distance between entity and locator
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.x -= @s ceapi.entity_motion.internal.pos1.x
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.y -= @s ceapi.entity_motion.internal.pos1.y
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.z -= @s ceapi.entity_motion.internal.pos1.z

#set speed based off storage
$scoreboard players set $multi ceapi.entity_motion.internal.pos2.x $(strength)
$scoreboard players set $multi ceapi.entity_motion.internal.pos2.y $(strength)
$scoreboard players set $multi ceapi.entity_motion.internal.pos2.z $(strength)

#multiply by speed
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.x *= $multi ceapi.entity_motion.internal.pos2.x
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.y *= $multi ceapi.entity_motion.internal.pos2.y
scoreboard players operation @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.z *= $multi ceapi.entity_motion.internal.pos2.z

#apply motion to entity based on vector
execute store result entity @s Motion[0] double 0.000003 run scoreboard players get @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.x
execute store result entity @s Motion[1] double 0.000003 run scoreboard players get @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.y
execute store result entity @s Motion[2] double 0.000003 run scoreboard players get @n[tag=ceapi.entity.motion.loc] ceapi.entity_motion.internal.pos2.z

#remove locator
execute positioned ~ ~1.7 ~ positioned ^ ^ ^1 as @n[tag=ceapi.entity.motion.loc] run kill @s
