scoreboard objectives add netherFortD dummy
scoreboard objectives add MNetherFortD dummy

scoreboard players set ticks MNetherFortD 1500
execute store result score ticks netherFortD run execute in minecraft:the_nether run execute positioned 0 0 0 run locate Fortress
execute if score ticks netherFortD < ticks MNetherFortD run tellraw @a {"text":"Existe una nether fortress cerca del 0 0","color":"aqua"}
execute if score ticks netherFortD >= ticks MNetherFortD run tellraw @a {"text":"NO Existe una nether fortress cerca del 0 0","color":"red"}

scoreboard objectives remove netherFortD
scoreboard objectives remove MNetherFortD
