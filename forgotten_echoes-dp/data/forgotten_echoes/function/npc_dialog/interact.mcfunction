#as NPCs interaction 
say click
execute if entity @s[tag=forgotten_echoes.dialog0] run say dialog0
execute if entity @s[tag=type1] run function forgotten_echoes:npc_dialog/type1/check_quest