execute align xyz positioned ~.5 ~ ~.5 rotated 90 0 run function aj:echo_knight/summon {args:{animation:idle,start_animation:true}}
execute as @n[tag=aj.echo_knight.root] at @s run function ceapi:boss/echo_knight/onspawn_aj
kill @n[type=interaction,tag=forgotten_echoes.boss_spawn]

