#save model UUID to temp storage (DO NOT MODIFY)
function ceapi:tools/uuid/generate
data modify storage ceapi:summondata args.ModelUUID set from storage gu:main out

#owner system (DO NOT MODIFY)
execute unless data storage ceapi:summondata args.OwnerUUID run data modify storage ceapi:summondata args.OwnerUUID set from storage ceapi:summondata args.ModelUUID

#namespace of AJ model (MODIFY)
data modify storage ceapi:summondata args.model_namespace set value "aj"
#name of AJ model (MODIFY)
data modify storage ceapi:summondata args.model set value "echo_knight"
#the type of entity this is (MODIFY)
data modify storage ceapi:summondata args.type set value "boss"
#datapack path (MODIFY)
data modify storage ceapi:summondata args.path set value "boss/echo_knight"

#the entity this will be (MODIFY)
data modify storage ceapi:summondata args.entity set value "vindicator"
#the max hp of this entity (MODIFY)
data modify storage ceapi:summondata args.maxhp set value 350
#the entitydata for this entity (MODIFY)
data modify storage ceapi:summondata args.entitydata set value {Silent:1b,Health:1024f,Tags:["boss","echo_knight_core"],CustomName:"Echo Knight",equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:air",count:1},chest:{id:"minecraft:air",count:1},head:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"air"}},mainhand:{id:"minecraft:air",count:1}},attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:follow_range",base:100},{id:"minecraft:knockback_resistance",base:0.9},{id:"minecraft:movement_speed",base:0.32},{id:"minecraft:scale",base:1.5},{id:"minecraft:step_height",base:2},{id:"minecraft:armor",base:8}]}

#summon the entity (DO NOT MODIFY)
function ceapi:global/onsummon/zzz/1 with storage ceapi:summondata args
