attribute @s minecraft:knockback_resistance modifier remove ceapi:nomove
attribute @s minecraft:follow_range modifier remove ceapi:nomove
attribute @s minecraft:movement_speed modifier remove ceapi:nomove
tag @s remove ceapi.nomove
execute on passengers if entity @s[type=silverfish,tag=ceapi.nomover] run function ceapi:zzz/tools/attribute/nomove/off
