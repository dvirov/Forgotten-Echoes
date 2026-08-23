scoreboard players operation @s forgotten_echoes.entity_id = #assign_id forgotten_echoes.entity_id
scoreboard players set @s forgotten_echoes.quest_timer 100
$bossbar add forgotten_echoes:$(entity_id) [{color:"#FFFFFF",text:"Echo Quest"}] 
$bossbar set forgotten_echoes:$(entity_id) players @a[distance=..5]
$bossbar set forgotten_echoes:$(entity_id) max 2000
$bossbar set forgotten_echoes:$(entity_id) value 2000


