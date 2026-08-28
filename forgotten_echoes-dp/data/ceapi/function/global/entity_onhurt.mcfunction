#play hurt animation
$function ceapi:global/anim/hurt {ModelUUID:"$(ModelUUID)",model:$(model),model_namespace:"$(model_namespace)"}

#if this entity is a boss, do this health calc
execute if entity @s[tag=boss] run function ceapi:global/health/boss with storage ceapi:temp args.phase

#if not boss, do this health calc
execute unless entity @s[tag=boss] run function ceapi:global/health/all_other

