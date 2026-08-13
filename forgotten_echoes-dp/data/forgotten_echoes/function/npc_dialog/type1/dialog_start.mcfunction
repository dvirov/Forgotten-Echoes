# as interaction


execute if score @s forgotten_echoes.dialog_timer matches 100 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Is it you who woke me from my eternal slumber?"}]

execute if score @s forgotten_echoes.dialog_timer matches 180 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"you fixed the old bell you say? "}]

execute if score @s forgotten_echoes.dialog_timer matches 260 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"I see, in my days we used those only on the Equinoxes to see our beloved ones and ask for guidance from the ancients. "}]

execute if score @s forgotten_echoes.dialog_timer matches 400 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"The only reason you managed to activate the bell just now is likely due to the energy released during the repair."}]

execute if score @s forgotten_echoes.dialog_timer matches 540 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"you are very lucky to not summon something dangerous."}]


execute if score @s forgotten_echoes.dialog_timer matches 640 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Well it was nice to me you but now you must release me back to my slumber. just use the "},"ITEM HERE"]

execute if score @s forgotten_echoes.dialog_timer matches 660 run tag @s add forgotten_echoes.waiting_for_input
execute if score @s forgotten_echoes.dialog_timer matches 660 at @s run tag @n[tag=forgotten_echoes.root_entity] add forgotten_echoes.waiting_for_input












