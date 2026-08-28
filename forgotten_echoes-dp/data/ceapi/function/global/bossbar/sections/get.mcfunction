#0/6 is always 0
data modify storage ceapi:phasedata args.bossbar.0of6 set value 0

#6/6 is always the max because duh bro
execute store result storage ceapi:phasedata args.bossbar.6of6 int 1 run data get storage ceapi:phasedata args.bossbar.max

function ceapi:global/bossbar/sections/get1of6 with storage ceapi:phasedata args.bossbar
function ceapi:global/bossbar/sections/get2of6 with storage ceapi:phasedata args.bossbar
function ceapi:global/bossbar/sections/get3of6 with storage ceapi:phasedata args.bossbar
function ceapi:global/bossbar/sections/get4of6 with storage ceapi:phasedata args.bossbar
function ceapi:global/bossbar/sections/get5of6 with storage ceapi:phasedata args.bossbar
