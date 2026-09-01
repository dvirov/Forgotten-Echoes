scoreboard players operation @s forgotten_echoes.entity_id = #assign_id forgotten_echoes.entity_id
scoreboard players set @s forgotten_echoes.quest_timer 4000
$bossbar add forgotten_echoes:$(entity_id) [{color:"#F0F6FF",text:"$(name)'s Quest"}] 
$bossbar set forgotten_echoes:$(entity_id) players @a[distance=..5]
$bossbar set forgotten_echoes:$(entity_id) max 4000
$bossbar set forgotten_echoes:$(entity_id) value 4000


