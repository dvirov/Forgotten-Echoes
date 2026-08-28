data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
$data modify storage ceapi:temp args merge value {damage:$(damage),type:"$(type)"}
function ceapi:zzz/global/attacks/damage/setup_fromowner with storage ceapi:temp args
