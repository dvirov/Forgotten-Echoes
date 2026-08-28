$execute unless score @s ceapi.bonusattackchance matches 1..100 run scoreboard players set @s ceapi.bonusattackchance $(initial)
$execute unless predicate {"condition": "minecraft:random_chance","chance": {"type": "minecraft:score","target": {"type": "minecraft:context","target": "this"},"score": "ceapi.bonusattackchance","scale": 0.01}} run return run scoreboard players $(operation) @s ceapi.bonusattackchance $(change)
$$(on_success)
scoreboard players reset @s ceapi.bonusattackchance
