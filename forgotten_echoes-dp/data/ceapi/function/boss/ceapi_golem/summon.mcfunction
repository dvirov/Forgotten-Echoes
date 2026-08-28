#clear any old summondata data (DO NOT MODIFY)
data remove storage ceapi:summondata args

#uncomment the below line to have the executor be the Owner of this entity
function ceapi:global/onsummon/zzz/store_owner

execute rotated ~ 0 run function aj:ceapi_golem/summon {args:{}}
