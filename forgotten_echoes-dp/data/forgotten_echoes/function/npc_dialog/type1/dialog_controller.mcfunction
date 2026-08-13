# as interaction


#starting dialog
execute if entity @s[tag=forgotten_echoes.dialog0] run function forgotten_echoes:npc_dialog/type1/dialog_start

#complete quest quickly
execute if entity @s[tag=forgotten_echoes.dialog1] run function forgotten_echoes:npc_dialog/type1/dialog_quest_completed_quickly




#complete quest 
execute if entity @s[tag=forgotten_echoes.dialog2] run function forgotten_echoes:npc_dialog/type1/dialog_quest_completed
