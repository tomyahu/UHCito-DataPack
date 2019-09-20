scoreboard objectives add menuPage dummy
tag @a[tag=menuHolding] add menuHolding2
# change this conditions
tag @a[nbt={SelectedItem:{id:"minecraft:bedrock"}}] add menuHolding
tag @a[nbt=!{SelectedItem:{id:"minecraft:bedrock"}}] remove menuHolding

execute as @a[tag=!menuHolding2,tag=menuHolding] at @s run function menu:summon/summongui
execute as @a[tag=menuHolding2,tag=!menuHolding] at @s run function menu:summon/desummongui
tag @a[tag=menuHolding2] remove menuHolding2

execute as @e[tag=menuGui] at @s positioned ~ ~-1 ~ unless entity @p[distance=..3] run tp @s ~ -500 ~
execute as @e[tag=menuGui] at @s positioned ~ ~-1 ~ unless entity @p[distance=..3] run kill @s

# you can edit the position here
execute as @a[tag=menuHolding] at @s positioned ~ ~1 ~ run tp @e[tag=menuGuiStand,distance=..3,sort=nearest,limit=1] ^ ^ ^1.5
execute as @e[tag=menuGuiCart,scores={menuPage=0}] at @s run function menu:gui/gui0
execute as @e[tag=menuGuiCart,scores={menuPage=1}] at @s run function menu:gui/gui1
