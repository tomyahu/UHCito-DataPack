### Preparation
# Sets the time to Noon
time set 6000

# Gamerules changes in worlds
execute in minecraft:overworld run function uhc:gamerule_changes/setup
execute in minecraft:the_nether run function uhc:gamerule_changes/setup
execute in minecraft:the_end run function uhc:gamerule_changes/setup

# Sets everyone's game mode to adventure
gamemode adventure @a

## Creates Holding Chamber for Dead Players
fill -10 250 -10 10 253 10 minecraft:barrier
fill -9 251 -9 9 253 9 minecraft:air

# New world spawn
setworldspawn 0 251 0
spawnpoint @a 0 251 0

# Add resistance 5 to everyone for 1 hour and hide particles
effect give @a minecraft:resistance 3600 5 true

# Add regeneration 5 to everyone for 1 hour and hide particles
effect give Atemo678 minecraft:regeneration 3600 1 true

# Add saturation 1 to everyone for 30 minutes and hide particles
effect give @a minecraft:saturation 1000000 1 true

### Teams

# Create Teams
team add team1
team add team2
team add team3
team add team4
team add team5

# Colour teams
team modify team1 color aqua
team modify team2 color red
team modify team3 color gold
team modify team4 color green
team modify team5 color light_purple


### Scoreboards
function uhc:set_scoreboards

