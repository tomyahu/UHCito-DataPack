summon minecraft:armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,NoGravity:1b,Silent:1b,Tags:[menuGui, menuGuiCart]}],Silent:1b,Tags:[menuGui, menuGuiStand]}
scoreboard players set @e[tag=menuGuiCart] menuPage 0
team add menuNoCol
team modify menuNoCol collisionRule never
team join menuNoCol @e[tag=menuGuiCart]
execute as @e[tag=menuGuiCart,scores={menuPage=0}] at @s run function menu:gui/load0
execute as @e[tag=menuGuiCart,scores={menuPage=1}] at @s run function menu:gui/load1
