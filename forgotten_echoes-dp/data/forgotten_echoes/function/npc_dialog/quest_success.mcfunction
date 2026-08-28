#as player/target
execute as @n[tag=forgotten_echoes.dialog_timer,distance=..10,type=interaction] run tag @s remove forgotten_echoes.waiting_for_input
data modify entity @n[distance=..10,tag=forgotten_echoes.item_display,type=minecraft:item_display] item set from entity @s SelectedItem
execute as @n[tag=aj.ghost_villager_a.root,distance=..10,type=item_display] run function aj:ghost_villager_a/animations/take_item/play_exclusive

item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b}]
advancement grant @s only forgotten_echoes:complete_echo_quest

