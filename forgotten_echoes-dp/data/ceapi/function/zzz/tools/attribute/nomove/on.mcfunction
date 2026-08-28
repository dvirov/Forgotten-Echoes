execute on passengers if entity @s[type=silverfish] run return fail
$execute positioned ~ 0 ~ summon silverfish run ride @s mount $(EntityUUID)
execute on passengers if entity @s[type=silverfish] run data merge entity @s {HasVisualFire:0b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1024f,Tags:["ceapi.nomover"],attributes:[{id:"minecraft:scale",base:0}]}
