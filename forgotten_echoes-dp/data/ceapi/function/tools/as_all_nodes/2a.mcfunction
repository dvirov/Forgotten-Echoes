#if there is no more data to copy, move on
execute unless data storage ceapi:temp as_all_nodes.tempuuids[0] run return run function ceapi:tools/as_all_nodes/2c

#grab uuid from top of list and set that to the current node
data modify storage ceapi:temp as_all_nodes.iterating.current set from storage ceapi:temp as_all_nodes.tempuuids[0]

#add iterating.current to final uuids list with format {uuids:[{NodeUUID:"$(current"}]}
function ceapi:tools/as_all_nodes/2b with storage ceapi:temp as_all_nodes.iterating

#remove the iterated node
data remove storage ceapi:temp as_all_nodes.tempuuids[0]

#repeat
function ceapi:tools/as_all_nodes/2a