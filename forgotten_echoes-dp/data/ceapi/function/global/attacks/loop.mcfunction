#if = close
$execute on target if entity @s[distance=..$(range_close)] as $(EntityUUID) at @s store result score @s ceapi.ce.atkrng run random value 1..$(oddsto1_close)

#if = mid
$execute on target if entity @s[distance=$(range_close)..$(range_far)] as $(EntityUUID) at @s store result score @s ceapi.ce.atkrng run random value 1..$(oddsto1_mid)

#if = far
$execute on target if entity @s[distance=$(range_far)..] as $(EntityUUID) at @s store result score @s ceapi.ce.atkrng run random value 1..$(oddsto1_far)

#if oddsto1 succeeds, try to attack
execute if score @s ceapi.ce.atkrng matches 1 run function ceapi:global/attacks/select with storage ceapi:temp args.attacks
