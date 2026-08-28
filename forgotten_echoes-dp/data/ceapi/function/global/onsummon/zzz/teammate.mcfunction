$tag $(EntityUUID) add teammate.$(OwnerUUID)
$tag $(ModelUUID) add teammate.$(OwnerUUID)

$tag $(EntityUUID) add teammate.$(EntityUUID)
$tag $(EntityUUID) add teammate.$(ModelUUID)

$tag $(ModelUUID) add teammate.$(EntityUUID)
$tag $(ModelUUID) add teammate.$(ModelUUID)

$execute as $(EntityUUID) if entity @s[type=wolf] run data modify entity @s Owner set from entity $(OwnerUUID) UUID
