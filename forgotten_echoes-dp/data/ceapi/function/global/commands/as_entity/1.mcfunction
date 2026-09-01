data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
$data modify storage ceapi:temp args.cmd set value "$(cmd)"
function ceapi:global/commands/as_entity/2 with storage ceapi:temp args
