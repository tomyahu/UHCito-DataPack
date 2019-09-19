tellraw @a {"text":"Desinstalando pack","color":"red"}

### Remove Scoreboards
# Display Scores
scoreboard objectives remove health
scoreboard objectives remove deathCount

# Episode Markers
scoreboard objectives remove episode
scoreboard objectives remove final_episode

# Enchanted Golden Apple Marker
scoreboard objectives remove EGAppleEat

### Teams Related
# Teams Defeated
scoreboard objectives remove team1Death
scoreboard objectives remove team2Death
scoreboard objectives remove team3Death
scoreboard objectives remove team4Death
scoreboard objectives remove team5Death

# Total Teams Alive
scoreboard objectives remove teamsAlive

### Other Scoreboards
# Deaths
scoreboard objectives remove deaths

### Reset Gamerules
execute in minecraft:overworld run function uhc:gamerule_changes/uninstall
execute in minecraft:the_nether run function uhc:gamerule_changes/uninstall
execute in minecraft:the_end run function uhc:gamerule_changes/uninstall

### Remove Teams
team remove team1
team remove team2
team remove team3
team remove team4
team remove team5

### Reset World Border
worldborder set 29999984
worldborder damage amount 0.2

tellraw @a {"text":"El Pack UHCito ha sido DESINSTALADO con exito!","color":"red"}
