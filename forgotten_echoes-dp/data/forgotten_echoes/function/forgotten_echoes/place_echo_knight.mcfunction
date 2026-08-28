execute if entity @s[type=marker] run kill @s
#execute at @s positioned 0. 0 0. rotated ~45 0 positioned ^ ^ ^-.5 align xz facing -.5 0 -.5 rotated ~-45 0 positioned as @s run summon chicken ~ ~1 ~ {NoAI:true}
 #execute positioned ~0. ~ ~0. rotated ~45 0 positioned ^ ^ ^-.5 align xz facing ~-.5 ~ ~-.5 rotated ~-45 0 run summon chicken ~ ~1 ~ {NoAI:true}
execute align xyz positioned ~.5 ~ ~.5 rotated 90 0 run function aj:echo_knight/summon {args:{animation:spawn_wall}}

