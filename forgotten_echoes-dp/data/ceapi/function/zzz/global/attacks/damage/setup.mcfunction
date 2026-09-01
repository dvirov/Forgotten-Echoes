$data modify storage ceapi:temp damage.amount set value '$(damage)'
$data modify storage ceapi:temp damage.type set value '$(type)'
$data modify storage ceapi:temp damage.by set value '$(EntityUUID)'
$data modify storage ceapi:temp damage.from set value '$(EntityUUID)'

#function ceapi:global/attacks/damage/apply with storage ceapi:temp damage

