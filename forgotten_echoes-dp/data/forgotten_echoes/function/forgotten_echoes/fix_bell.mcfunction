
#checks for matching item
#placeholder
execute on target unless items entity @s weapon.mainhand echo_shard run return fail
execute on target run item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b}]
execute as @n[tag=aj.echo_bell.root] run function aj:echo_bell/animations/repair/play

tag @s add fixed

#placeholder
playsound block.anvil.use block @a ~ ~ ~

