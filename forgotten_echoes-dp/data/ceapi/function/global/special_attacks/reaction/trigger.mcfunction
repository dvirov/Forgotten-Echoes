data merge entity @s {width:0,height:0}
data remove entity @s attack
tag @s remove reaction

data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
function ceapi:zzz/global/special_attacks/reaction/trigger with storage ceapi:temp args
