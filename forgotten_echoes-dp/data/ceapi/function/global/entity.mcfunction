#movement logic
execute if entity @s[tag=!attacking,tag=!deathing,tag=!phasing] run function ceapi:global/anim/movement/loop

#attack logic
execute if entity @s[tag=!attacking,tag=!deathing,tag=!phasing] run function ceapi:global/attacks/loop with storage ceapi:temp args.attacks

#music
execute if entity @s[tag=!deathing,tag=!phasing] run function ceapi:global/music/loop with storage ceapi:temp args.music

#bossbar
execute unless entity @s[tag=deathing] unless entity @s[tag=bossbar.hide] run function ceapi:global/bossbar/loop with storage ceapi:temp args.bossbar
execute if entity @s[tag=bossbar.hide] run function ceapi:global/bossbar/hide with storage ceapi:temp args.bossbar

#look towards nearest player slowly
execute if entity @s[tag=looknearest] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..100] anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..100] eyes rotated ~1 ~-3 positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

