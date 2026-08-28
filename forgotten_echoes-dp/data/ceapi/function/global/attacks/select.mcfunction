#choose atk based on distance from enemy

#if = close
$execute on target if entity @s[distance=..$(range_close)] as $(EntityUUID) at @s run function ceapi:global/attacks/select/close/1 with storage ceapi:temp args.attacks

#if = mid
$execute on target if entity @s[distance=$(range_close)..$(range_far)] as $(EntityUUID) at @s run function ceapi:global/attacks/select/mid/1 with storage ceapi:temp args.attacks

#if = far
$execute on target if entity @s[distance=$(range_far)..] as $(EntityUUID) at @s run function ceapi:global/attacks/select/far/1 with storage ceapi:temp args.attacks

#play attack after getting data
function ceapi:global/attacks/play with storage ceapi:temp args.attacks

#stop attacking
$scoreboard players reset $(EntityUUID) ceapi.ce.atkrng
