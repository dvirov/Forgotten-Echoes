function ceapi:global/bossbar/remove with storage ceapi:temp args.bossbar
function ceapi:global/music/end with storage ceapi:temp args.music
function ceapi:global/commands/as_model/1 {cmd:'function ceapi:tools/kill_aj with ceapi:temp args.basic'}
data merge entity @s {Invulnerable:0b}
data merge entity @s {Health:0f}
