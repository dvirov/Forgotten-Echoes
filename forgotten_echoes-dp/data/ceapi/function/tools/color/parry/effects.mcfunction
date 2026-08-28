execute unless data entity @s item.id run return 0
data modify entity @s[type=item_display] item.components.minecraft:dyed_color set value 16757504
data merge entity @s[type=item_display] {Glowing:1b,glow_color_override:16757504}
