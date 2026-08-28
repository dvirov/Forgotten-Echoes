data merge entity @s {width:0,height:0}
data remove entity @s attack
tag @s remove parry

data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
function ceapi:zzz/global/special_attacks/parry/trigger with storage ceapi:temp args
