#save ceapi entity score (DO NOT MODIFY)
function ceapi:global/data_manager/prepare_macro {location:'ceapi:phasedata args.id'}
#name of the AJ model, also the namespace for this custom entity in the datapack
data modify storage ceapi:phasedata args.basic.model set value "ceapi_template"
#tag that the core AI entity has
data modify storage ceapi:phasedata args.basic.model_namespace set value "aj"
#entity type, which is also the namespace in the datapack
data modify storage ceapi:phasedata args.basic.type set value "boss_minion"
#datapack path
data modify storage ceapi:phasedata args.basic.path set value "boss_minion/ceapi_template"

#idle animation to play
data modify storage ceapi:phasedata args.movement.idle set value "idle"
#walk animation to play
data modify storage ceapi:phasedata args.movement.walk set value "walk"

#integer of which phase we are now in
data modify storage ceapi:phasedata args.phase.current set value 1
#what this boss's max phase is, which basically tells the code when to actually kill the boss if it has onDeath phase transitions
data modify storage ceapi:phasedata args.phase.max set value 1
#when to transition to the next phase. accepted values: "5of6", "4of6", "3of6", "2of6", "1of6", "0of6"
data modify storage ceapi:phasedata args.phase.transition_type set value "0of6"

#range (spherical) to use close range attacks
data modify storage ceapi:phasedata args.attacks.range_close set value 6
#range (spherical) to use far range attacks
data modify storage ceapi:phasedata args.attacks.range_far set value 12
#mid-range is from close-far

#which attacks should not disable movement
data modify storage ceapi:phasedata args.attacks.walking set value [99,99]

#which attacks can be used at range close
data modify storage ceapi:phasedata args.attacks.close set value [1,1,2,7]
#which attacks can be used at range mid
data modify storage ceapi:phasedata args.attacks.mid set value [2,3,7]
#which attacks can be used at range far
data modify storage ceapi:phasedata args.attacks.far set value [3,3,7,7,7]

#odds to 1 to trigger attack at range close
data modify storage ceapi:phasedata args.attacks.oddsto1_close set value 50
#odds to 1 to trigger attack at range mid
data modify storage ceapi:phasedata args.attacks.oddsto1_mid set value 50
#odds to 1 to trigger attack at range far
data modify storage ceapi:phasedata args.attacks.oddsto1_far set value 50

#EVERYTHING BELOW THIS POINT IS REQUIRED IN EVERY PHASEXDATA FILE!
#DO NOT CHANGE ANYTHING BELOW
#DO NOT CHANGE ANYTHING BELOW
#DO NOT CHANGE ANYTHING BELOW

#attack amount info
execute store result storage ceapi:phasedata args.attacks.close_amount int 1 run data get storage ceapi:phasedata args.attacks.close
execute store result storage ceapi:phasedata args.attacks.mid_amount int 1 run data get storage ceapi:phasedata args.attacks.mid
execute store result storage ceapi:phasedata args.attacks.far_amount int 1 run data get storage ceapi:phasedata args.attacks.far
data modify storage ceapi:phasedata args.attacks.close prepend value 0
data modify storage ceapi:phasedata args.attacks.mid prepend value 0
data modify storage ceapi:phasedata args.attacks.far prepend value 0

function ceapi:global/data_manager/prepare_macro {location:'ceapi:phasedata args.id'}
function ceapi:global/data_manager/write/send_phasedata_to_storage with storage ceapi:phasedata args
