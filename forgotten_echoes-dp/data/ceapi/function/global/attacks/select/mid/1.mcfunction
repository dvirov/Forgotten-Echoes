execute if data storage ceapi:temp {args:{attacks:{mid_amount:0}}} run return fail
$execute store result storage ceapi:temp args.attacks.choice_index int 1 run random value 1..$(mid_amount)
execute if data storage ceapi:temp {args:{attacks:{mid_amount:1}}} run data modify storage ceapi:temp args.attacks.choice_index set value 1
function ceapi:global/attacks/select/mid/2 with storage ceapi:temp args.attacks
