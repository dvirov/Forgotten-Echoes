tag @s add slowcast
data merge entity @s {item:{id:barrier,components:{custom_name:"Echo Knight Mace",item_model:"forgotten_echoes:echo_knight_mace"}},transformation:{translation:[0,-.5,-1]}}

rotate @s facing entity @p eyes
#execute rotated as @n[tag=aj.echo_knight.root] run rotate @s ~ ~

scoreboard players operation @s slowcast.steps = #maxSteps temp
scoreboard players operation @s slowcast.duration = #duration temp

function forgotten_echoes:forgotten_echoes/boss_atacks/echo_knight/temp_tick