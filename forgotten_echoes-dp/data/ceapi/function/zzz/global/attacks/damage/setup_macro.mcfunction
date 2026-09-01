$data modify storage ceapi:temp damage.amount set value '$(damage)'
$data modify storage ceapi:temp damage.type set value '$(type)'
$data modify storage ceapi:temp damage.by set from ceapi:temp args.$(by)
$data modify storage ceapi:temp damage.from set from ceapi:temp args.$(from)

#function ceapi:global/attacks/damage/apply with storage ceapi:temp damage
