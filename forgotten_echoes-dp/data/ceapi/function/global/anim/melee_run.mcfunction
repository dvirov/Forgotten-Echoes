execute if entity @s[tag=attacking] run return fail

data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
function ceapi:global/anim/melee with storage ceapi:temp args
