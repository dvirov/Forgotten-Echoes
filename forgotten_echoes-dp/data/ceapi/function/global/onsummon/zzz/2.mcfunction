#create new id
execute store result score @s ceapi.ce.id run scoreboard players add $lastused ceapi.ce.id 1
execute store result storage ceapi:summondata args.id int 1 run scoreboard players get @s ceapi.ce.id

#get uuid of entity
function ceapi:tools/uuid/generate
data modify storage ceapi:summondata args.EntityUUID set from storage gu:main out

#store basic data
function ceapi:global/onsummon/zzz/store_basic with storage ceapi:summondata args

#apply entitydata to summoned entity
$data merge entity @s $(entitydata)

#apply CEAPI specific entitydata
data merge entity @s {CustomNameVisible:0b,DeathTime:99s,PersistenceRequired:1b,Health:1024f,active_effects:[{id:"minecraft:invisibility",amplifier:100,duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1024}]}

#set current health to maxhp
$scoreboard players set @s ceapi.ce.health $(maxhp)

#apply phase1data on spawn
$function ceapi:$(path)/phase1data

#create the bossbar
function ceapi:global/bossbar/create with storage ceapi:summondata args

#rotate model towards facing of entity
$execute rotated as $(ModelUUID) run rotate @s ~ ~

#add melee check item to entity
execute if data entity @s equipment.mainhand run enchant @s ceapi:melee_check 1
execute unless data entity @s equipment.mainhand run item replace entity @s weapon.mainhand with stick[item_model=air,enchantments={"ceapi:melee_check":1}] 1

#attach to teammate system
function ceapi:global/onsummon/zzz/teammate with storage ceapi:summondata args
