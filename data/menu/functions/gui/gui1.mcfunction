#############
# Page 1 of 2
# Generated using the Gui Generator by Stevertus
# get it at www.stevertus.ga/tools/gui
#
# execute this function as the minecart chest!
#############
scoreboard objectives add menuGUI dummy
tag @s remove menuUsed
# item 0 on slot 2 || player_head
execute store result score @s menuGUI run data get entity @s Items[0].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Revive Team 1\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run function run:reviveteam1
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 2 run tag @s add menuUsed
scoreboard players reset @s gui

# item 1 on slot 3 || player_head
execute store result score @s menuGUI run data get entity @s Items[1].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 3 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Revive Team 2\",\"italic\":false}"}} 3
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 3 run function run:reviveteam2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 3 run tag @s add menuUsed
scoreboard players reset @s gui

# item 2 on slot 4 || player_head
execute store result score @s menuGUI run data get entity @s Items[2].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 4 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Revive Team 3\",\"italic\":false}"}} 4
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 4 run function run:reviveteam3
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 4 run tag @s add menuUsed
scoreboard players reset @s gui

# item 3 on slot 5 || player_head
execute store result score @s menuGUI run data get entity @s Items[3].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 5 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Revive Team 4\",\"italic\":false}"}} 5
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 5 run function run:reviveteam4
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 5 run tag @s add menuUsed
scoreboard players reset @s gui

# item 4 on slot 6 || player_head
execute store result score @s menuGUI run data get entity @s Items[4].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 6 run clear @p minecraft:player_head{IsGuiItem:1, display: {"Name": "{\"text\":\"Revive Team 5\",\"italic\":false}"}} 6
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 6 run function run:reviveteam5
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 6 run tag @s add menuUsed
scoreboard players reset @s gui

# item 5 on slot 11 || skeleton_skull
execute store result score @s menuGUI run data get entity @s Items[5].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 11 run clear @p minecraft:skeleton_skull{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill Team 1\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 11 run function run:killteam1
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 11 run tag @s add menuUsed
scoreboard players reset @s gui

# item 6 on slot 12 || skeleton_skull
execute store result score @s menuGUI run data get entity @s Items[6].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 12 run clear @p minecraft:skeleton_skull{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill Team 2\",\"italic\":false}"}} 3
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 12 run function run:killteam2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 12 run tag @s add menuUsed
scoreboard players reset @s gui

# item 7 on slot 13 || skeleton_skull
execute store result score @s menuGUI run data get entity @s Items[7].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 13 run clear @p minecraft:skeleton_skull{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill Team 3\",\"italic\":false}"}} 4
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 13 run function run:killteam3
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 13 run tag @s add menuUsed
scoreboard players reset @s gui

# item 8 on slot 14 || skeleton_skull
execute store result score @s menuGUI run data get entity @s Items[8].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 14 run clear @p minecraft:skeleton_skull{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill Team 4\",\"italic\":false}"}} 5
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 14 run function run:killteam4
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 14 run tag @s add menuUsed
scoreboard players reset @s gui

# item 9 on slot 15 || skeleton_skull
execute store result score @s menuGUI run data get entity @s Items[9].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 15 run clear @p minecraft:skeleton_skull{IsGuiItem:1, display: {"Name": "{\"text\":\"Kill Team 5\",\"italic\":false}"}} 6
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 15 run function run:killteam5
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 15 run tag @s add menuUsed
scoreboard players reset @s gui

# item 10 on slot 26 || barrier
execute store result score @s menuGUI run data get entity @s Items[10].Slot
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run clear @p minecraft:barrier{IsGuiItem:1, display: {"Name": "{\"text\":\"Back\",\"italic\":false}"}} 2
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run scoreboard players set @s menuPage 0
execute if entity @s[tag=!menuUsed] unless score @s menuGUI matches 26 run tag @s add menuUsed
scoreboard players reset @s gui

execute as @s[tag=menuUsed,scores={menuPage=0}] at @s run function menu:gui/load0
execute as @s[tag=menuUsed,scores={menuPage=1}] at @s run function menu:gui/load1
