#summon and set up entity
$execute summon $(entity) run function ceapi:global/onsummon/zzz/2 with storage ceapi:summondata args

#have all nodes on rig also reflect ceapi score, generated inside function above
function ceapi:global/onsummon/zzz/store_id_on_aj_rig with storage ceapi:summondata args

#clean up
data remove storage ceapi:temp args
