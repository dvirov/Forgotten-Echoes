data remove storage ceapi:temp args
function ceapi:global/data_manager/prepare
$data modify storage ceapi:temp args.attack set value "$(attack)"
function ceapi:zzz/global/special_attacks/reaction/attack_on_hit with storage ceapi:temp args
