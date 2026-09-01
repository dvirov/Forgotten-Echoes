tag @s add attacking

#play animation and let walk continue if this attack is a walking attack
$execute if data storage ceapi:temp {args:{attacks:{walking:[$(choice)]}}} as $(ModelUUID) run function $(model_namespace):$(model)/animations/attack$(choice)/play

#stop all other animations to play this attack
$execute unless data storage ceapi:temp {args:{attacks:{walking:[$(choice)]}}} as $(ModelUUID) run function $(model_namespace):$(model)/animations/attack$(choice)/tween {to_frame:0,duration:0}

