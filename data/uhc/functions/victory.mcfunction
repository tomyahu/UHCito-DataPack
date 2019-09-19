# Broadcasts UHC winners
say @a[scores={deaths=0}] ha(n) ganado esta versión del UHCito!!!
scoreboard players set ticks teamsAlive 0

### Fireworks
# Give players resistance to fireworks
effect give @a minecraft:resistance 5 180

# Spawn Fireworks where the players are
execute at @a run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:1, FireworksItem:{id:firework_rocket, Count:1, tag:{Fireworks:{Flight:2, Explosions:[{Type:1, Flicker:1, Trail:1, Colors:[I;4539903,15483135,11478271], FadeColors:[I;4539903,15483135,11478271]}]}}}}

execute at @a run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:1, FireworksItem:{id:firework_rocket, Count:1, tag:{Fireworks:{Flight:2, Explosions:[{Type:1, Flicker:1, Trail:1, Colors:[I;2228009,1735966,2209086], FadeColors:[I;2228009,1735966,2209086]}]}}}}

execute at @a run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:1, FireworksItem:{id:firework_rocket, Count:1, tag:{Fireworks:{Flight:2, Explosions:[{Type:1, Flicker:1, Trail:1, Colors:[I;2732287,1259133,3961013], FadeColors:[I;2732287,1259133,3961013]}]}}}}

### Set Daylight
time set day
gamerule doDaylightCycle false
