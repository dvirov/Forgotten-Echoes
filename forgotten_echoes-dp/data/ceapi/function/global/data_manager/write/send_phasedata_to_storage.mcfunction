$data modify storage ceapi:entities $(id) merge from storage ceapi:phasedata args

#movement
$data modify storage ceapi:entities $(id).movement.model set from storage ceapi:entities $(id).basic.model
#movement
$data modify storage ceapi:entities $(id).movement.model_namespace set from storage ceapi:entities $(id).basic.model_namespace
#movement
$data modify storage ceapi:entities $(id).movement.ModelUUID set from storage ceapi:entities $(id).basic.ModelUUID

#phase
$data modify storage ceapi:entities $(id).phase.model set from storage ceapi:entities $(id).basic.model
#phase
$data modify storage ceapi:entities $(id).phase.model_namespace set from storage ceapi:entities $(id).basic.model_namespace
#phase
$data modify storage ceapi:entities $(id).phase.ModelUUID set from storage ceapi:entities $(id).basic.ModelUUID

#onhurt
$data modify storage ceapi:entities $(id).onhurt.model set from storage ceapi:entities $(id).basic.model
#onhurt
$data modify storage ceapi:entities $(id).onhurt.model_namespace set from storage ceapi:entities $(id).basic.model_namespace
#onhurt
$data modify storage ceapi:entities $(id).onhurt.ModelUUID set from storage ceapi:entities $(id).basic.ModelUUID

#attacks
$data modify storage ceapi:entities $(id).attacks.model set from storage ceapi:entities $(id).basic.model
#attacks
$data modify storage ceapi:entities $(id).attacks.model_namespace set from storage ceapi:entities $(id).basic.model_namespace
#attacks
$data modify storage ceapi:entities $(id).attacks.ModelUUID set from storage ceapi:entities $(id).basic.ModelUUID
#attacks
$data modify storage ceapi:entities $(id).attacks.EntityUUID set from storage ceapi:entities $(id).basic.EntityUUID

data remove storage ceapi:temp args.phasedata
