data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
function ceapi:global/data_manager/read/basic with storage ceapi:temp args
$data modify storage ceapi:temp args merge value {damage:$(damage),type:"$(type)",by:"$(by)",from:"$(from)"}
function ceapi:zzz/global/attacks/damage/setup_macro with storage ceapi:temp args
