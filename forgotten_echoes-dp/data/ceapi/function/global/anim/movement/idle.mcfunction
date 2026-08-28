$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(walk)/pause
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(walk)/set_frame {frame:0}
$execute as $(ModelUUID) run function $(model_namespace):$(model)/animations/$(idle)/resume
scoreboard players set @s ceapi.movement.previousState 0
