$execute if entity @s[tag=teammate.$(by)] run return 0
$execute if entity @s[tag=teammate.$(from)] run return 0

$damage @s $(amount) $(type) by $(by) from $(from)
