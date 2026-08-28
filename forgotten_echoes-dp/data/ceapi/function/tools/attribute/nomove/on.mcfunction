attribute @s minecraft:knockback_resistance modifier add ceapi:nomove 100 add_value
attribute @s minecraft:follow_range modifier add ceapi:nomove -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add ceapi:nomove -1 add_multiplied_total
tag @s add ceapi.nomove

data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
function ceapi:zzz/tools/attribute/nomove/on with storage ceapi:temp args
