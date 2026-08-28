# as interaction


execute if score @s forgotten_echoes.dialog_line matches 1 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Can you hear it, traveler? No... of course you can't. The Deep Silence swallowed it whole when we all fell."}]

execute if score @s forgotten_echoes.dialog_line matches 2 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Before the "},{color:"#2a4073",text:"nameremoved",obfuscated:true},{text:"took this place, we tried to forge Special bell —an anchor to keep our memories safe from the darkness. When the "},{color:"#2a4073",text:"nameremoved",obfuscated:true},{text:" rose, I panicked and hide it"}]

execute if score @s forgotten_echoes.dialog_line matches 3 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"Without it, our memories are fading. Please find and bring back this item to me, so I may rest..."}]

execute if score @s forgotten_echoes.dialog_line matches 4 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"If you do manage to find it,i'll give something"}]


execute if score @s forgotten_echoes.dialog_line matches 5 run tellraw @a[distance=..10] [{color:white,text:""},"<",{"selector":"@s"},"> ",{text:"So please go and find "},{color:yellow,text:"Calibrated Echo Bell"},{text:" for me"}]

execute if score @s forgotten_echoes.dialog_line matches 5 run function forgotten_echoes:npc_dialog/type2/quest_prepare













