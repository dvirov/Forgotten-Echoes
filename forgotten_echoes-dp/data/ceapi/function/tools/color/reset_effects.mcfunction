execute unless data entity @s item.id run return 0
data modify entity @s[type=item_display] item.components.minecraft:dyed_color set value -1
data merge entity @s[type=item_display] {Glowing:0b,glow_color_override:-1}
