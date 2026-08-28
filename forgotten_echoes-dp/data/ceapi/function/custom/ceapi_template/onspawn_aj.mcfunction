#clear any temp data (DO NOT MODIFY)
data remove storage ceapi:summondata args

#save model UUID to temp storage (DO NOT MODIFY)
function ceapi:tools/uuid/generate
data modify storage ceapi:summondata args.ModelUUID set from storage gu:main out

#owner system (DO NOT MODIFY)
execute unless data storage ceapi:summondata args.OwnerUUID run data modify storage ceapi:summondata args.OwnerUUID set from storage ceapi:summondata args.ModelUUID

#namespace of AJ model (MODIFY)
data modify storage ceapi:summondata args.model_namespace set value "aj"
#name of AJ model (MODIFY)
data modify storage ceapi:summondata args.model set value "ceapi_template"
#the type of entity this is (MODIFY)
data modify storage ceapi:summondata args.type set value "custom"
#datapack path (MODIFY)
data modify storage ceapi:summondata args.path set value "custom/ceapi_template"

#the entity this will be (MODIFY)
data modify storage ceapi:summondata args.entity set value "vindicator"
#the max hp of this entity (MODIFY)
data modify storage ceapi:summondata args.maxhp set value 350
#the entitydata for this entity (MODIFY)
data modify storage ceapi:summondata args.entitydata set value {Silent:1b,Health:1024f,Tags:["custom","ceapi_template_core"],CustomName:"Redstone Golem",equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:air",count:1},chest:{id:"minecraft:air",count:1},head:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"air"}},mainhand:{id:"minecraft:air",count:1}},attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:follow_range",base:50},{id:"minecraft:knockback_resistance",base:0.7},{id:"minecraft:movement_speed",base:0.22},{id:"minecraft:scale",base:2.5}]}

#summon the entity (DO NOT MODIFY)
function ceapi:global/onsummon/zzz/1 with storage ceapi:summondata args
