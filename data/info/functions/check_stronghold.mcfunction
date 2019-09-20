scoreboard objectives add strongHoldD dummy
scoreboard objectives add MStrongHoldD dummy

scoreboard players set ticks MStrongHoldD 1500
execute store result score ticks strongHoldD run execute in minecraft:overworld run execute positioned 0 0 0 run locate Stronghold
execute if score ticks strongHoldD < ticks MStrongHoldD run tellraw @a {"text":"Existe una nether fortress cerca del 0 0","color":"aqua"}
execute if score ticks strongHoldD >= ticks MStrongHoldD run tellraw @a {"text":"NO Existe una nether fortress cerca del 0 0","color":"red"}

scoreboard objectives remove strongHoldD
scoreboard objectives remove MStrongHoldD
