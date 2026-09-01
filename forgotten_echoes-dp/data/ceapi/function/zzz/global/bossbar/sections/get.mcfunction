#0/6 is always 0
data modify entity @s data.bossbar.0of6 set value 0

#6/6 is always the max because duh bro
execute store result entity @s data.bossbar.6of6 int 1 run data get entity @s data.bossbar.max

function ceapi:global/bossbar/sections/get1of6 with entity @s data.bossbar
function ceapi:global/bossbar/sections/get2of6 with entity @s data.bossbar
function ceapi:global/bossbar/sections/get3of6 with entity @s data.bossbar
function ceapi:global/bossbar/sections/get4of6 with entity @s data.bossbar
function ceapi:global/bossbar/sections/get5of6 with entity @s data.bossbar
