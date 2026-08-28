# as interaction


execute if score @s forgotten_echoes.dialog_line matches 1 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"How dare you wake me from my eternal slumber?"}]

execute if score @s forgotten_echoes.dialog_line matches 2 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Oh, you fixed this old bell you say? "}]

execute if score @s forgotten_echoes.dialog_line matches 3 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"I see, in my days we used those only on the Equinoxes to see our beloved ones and ask for guidance from the ancients. "}]

execute if score @s forgotten_echoes.dialog_line matches 4 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Probably the only reason you even managed to activate the bell just now is likely due to the energy released during the repair."}]

execute if score @s forgotten_echoes.dialog_line matches 5 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"you are very lucky to not summon something dangerous instead of me."}]


execute if score @s forgotten_echoes.dialog_line matches 6 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Well it was nice to meet you but now you must release me back to my slumber. just give me "},{color:yellow,text:"Broken Stone Tool"}]
execute if score @s forgotten_echoes.dialog_line matches 6 run function forgotten_echoes:npc_dialog/type1/quest_prepare













