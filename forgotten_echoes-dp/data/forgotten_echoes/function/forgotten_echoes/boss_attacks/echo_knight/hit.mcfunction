execute if score #bool temp matches 1 run return fail
scoreboard players set #bool temp 1
kill @n[tag=slowcast]


#effect give @s glowing 1 0 true


damage @s 20 mace_smash by @n[type=vindicator,tag=echo_knight_core]

playsound minecraft:item.mace.smash_ground_heavy block @a ~ ~ ~
particle minecraft:gust_emitter_small


