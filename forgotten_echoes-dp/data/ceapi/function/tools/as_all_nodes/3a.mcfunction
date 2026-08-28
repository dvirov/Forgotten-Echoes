#if there is no more data to copy, move on
execute unless data storage ceapi:temp as_all_nodes.uuids[0] run return run function ceapi:tools/as_all_nodes/3c

#grab uuid from top of list and set that to the NodeUUID which will run the command
data modify storage ceapi:temp as_all_nodes.running.NodeUUID set from storage ceapi:temp as_all_nodes.uuids[0].NodeUUID
#grab the command to run
data modify storage ceapi:temp as_all_nodes.running.command set from storage ceapi:temp as_all_nodes.command


#run command
function ceapi:tools/as_all_nodes/3b with storage ceapi:temp as_all_nodes.running

#remove the iterated node
data remove storage ceapi:temp as_all_nodes.uuids[0]

#repeat
function ceapi:tools/as_all_nodes/3a