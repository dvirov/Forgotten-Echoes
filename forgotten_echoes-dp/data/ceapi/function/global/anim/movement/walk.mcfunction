$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(idle)/pause
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(idle)/set_frame {frame:0}
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(walk)/resume
scoreboard players set @s ceapi.movement.previousState 1

