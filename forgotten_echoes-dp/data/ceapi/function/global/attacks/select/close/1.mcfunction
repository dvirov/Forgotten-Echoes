execute if data storage ceapi:temp {args:{attacks:{close_amount:0}}} run return fail
$execute store result storage ceapi:temp args.attacks.choice_index int 1 run random value 1..$(close_amount)
execute if data storage ceapi:temp {args:{attacks:{close_amount:1}}} run data modify storage ceapi:temp args.attacks.choice_index set value 1
function ceapi:global/attacks/select/close/2 with storage ceapi:temp args.attacks
