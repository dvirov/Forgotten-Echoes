

execute as @n[tag=aj.echo_bell.root,type=item_display] run function aj:echo_bell/animations/ring_bell/play

execute as @e[tag=forgotten_echoes.summoning_spot,distance=..10,type=item_frame] at @s run function forgotten_echoes:forgotten_echoes/ghosts/quest

execute as @e[tag=forgotten_echoes.summoning_spot_trader,distance=..300,type=item_frame] at @s if predicate {condition:"minecraft:random_chance",chance:0.7} run function forgotten_echoes:forgotten_echoes/ghosts/trader

execute on target run advancement grant @s only forgotten_echoes:activate_echo_bell

#placeholder
function forgotten_echoes:forgotten_echoes/effects/ringing_0



