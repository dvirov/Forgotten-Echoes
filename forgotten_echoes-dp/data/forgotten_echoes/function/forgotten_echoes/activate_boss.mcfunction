

execute on target unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:eternal_soul}] run return fail
kill @s
playsound minecraft:block.trial_spawner.ambient_ominous
execute on target run item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b}]
execute as @n[type=minecraft:item_display] run function aj:echo_knight/animations/spawn/play




