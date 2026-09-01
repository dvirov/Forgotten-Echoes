execute store result storage ceapi:temp as_all_nodes.id int 1 run scoreboard players get @s aj.id
function ceapi:tools/as_all_nodes/1b with storage ceapi:temp as_all_nodes
$data modify storage ceapi:temp as_all_nodes.command set value "$(cmd)"
function ceapi:tools/as_all_nodes/2a
