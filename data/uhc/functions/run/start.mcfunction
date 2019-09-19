# Gamerules changes in worlds
execute in minecraft:overworld run function uhc:gamerule_changes/start
execute in minecraft:the_nether run function uhc:gamerule_changes/start
execute in minecraft:the_end run function uhc:gamerule_changes/start

### Player Preparation

# Clears effects and inventory
effect clear @a
clear @a

# Clears xp
xp set @a 0 points
xp set @a 0 levels

# Revoke advancements
advancement revoke @a everything

# Sets gamemode to survival and difficulty to hard
gamemode survival @a
difficulty hard

# Gives everyone all recipes except the ones overrided
recipe give @a *
recipe take @a uhc:override_melon
recipe take @a uhc:override_regeneration_suspicious_stew

### World Prep
function uhc:prepare_world

# Anaunces the first episode
function uhc:announce_episode

# Shedule Achievements
function uhc:schedule_achievements

scoreboard players set @a deaths 0