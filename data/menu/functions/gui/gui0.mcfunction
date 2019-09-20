#############
# Page 1 of 2
# Generated using the Gui Generator by Stevertus
# get it at www.stevertus.ga/tools/gui
#
# execute this function as the minecart chest!
#############
scoreboard objectives add menuGUI dummy
tag @s remove menuUsed
# item 0 on slot 0 || command_block
execute store result score @s menuGUI run data get entity @s Items[0].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 0 run clear @p minecraft:command_block{IsGuiItem:1, display: {"Name": "{\"text\":\"Setup\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 0 run function run:setup
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 0 run tag @s add menuUsed
scoreboard players reset @s gui

# item 1 on slot 2 || player_head
execute store result score @s menuGUI run data get entity @s Items[1].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill/Revive Teams\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run scoreboard players set @s menuPage 1
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run tag @s add menuUsed
scoreboard players reset @s gui

# item 2 on slot 9 || ender_pearl
execute store result score @s menuGUI run data get entity @s Items[2].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 9 run clear @p minecraft:ender_pearl{IsGuiItem:1, display: {"Name": "{\"text\":\"Teleport Players\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 9 run function run:teleport_players
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 9 run tag @s add menuUsed
scoreboard players reset @s gui

# item 3 on slot 18 || iron_sword
execute store result score @s menuGUI run data get entity @s Items[3].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 18 run clear @p minecraft:iron_sword{IsGuiItem:1, display: {"Name": "{\"text\":\"Start\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 18 run function run:start
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 18 run tag @s add menuUsed
scoreboard players reset @s gui

# item 4 on slot 26 || barrier
execute store result score @s menuGUI run data get entity @s Items[4].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run clear @p minecraft:barrier{IsGuiItem:1, display: {"Name": "{\"text\":\"Uninstall\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run function run:uninstall
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run tag @s add menuUsed
scoreboard players reset @s gui

execute as @s[tag=menuUsed,scores={menuPage=0}] at @s run function menu:gui/load0
execute as @s[tag=menuUsed,scores={menuPage=1}] at @s run function menu:gui/load1
