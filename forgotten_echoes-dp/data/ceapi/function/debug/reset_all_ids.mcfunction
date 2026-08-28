execute if score $lastused ceapi.ce.id matches ..0 run return run scoreboard players set $lastused ceapi.ce.id 0

execute store result storage ceapi:temp args.debug.id int 1 run scoreboard players get $lastused ceapi.ce.id
function ceapi:debug/remove_id with storage ceapi:temp args.debug
scoreboard players remove $lastused ceapi.ce.id 1

function ceapi:debug/reset_all_ids
