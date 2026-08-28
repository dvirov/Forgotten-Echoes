$execute as @e[scores={ceapi.ce.id=$(id)}] run function ceapi:tools/kill
$data remove storage ceapi:entities $(id)
