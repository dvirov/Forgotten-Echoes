loot spawn ~ -1 ~ mine ~ ~-0.5 ~ stick[enchantments={"minecraft:silk_touch":1}]
execute positioned ~ -1 ~ as @n[type=item] run data modify storage ceapi:temp particle.blockid set from entity @s Item.id
execute positioned ~ -1 ~ as @n[type=item,distance=..2] run kill @s
$data modify storage ceapi:temp particle.p set value "$(p)"
$data modify storage ceapi:temp particle.cmd set value "$(cmd)"
function ceapi:tools/particle/run with storage ceapi:temp particle
