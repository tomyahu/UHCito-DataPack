### Scoreboards
# Display Scores
scoreboard objectives add health health "Health"
scoreboard objectives add deathCount deathCount
scoreboard objectives setdisplay list health
scoreboard players reset @a health

# Episode Markers
scoreboard objectives add episode dummy
scoreboard objectives add final_episode dummy

# Enchanted Golden Apple Marker
scoreboard objectives add EGAppleEat minecraft.used:minecraft.enchanted_golden_apple


### Episode Markers
scoreboard players set ticks episode 0
scoreboard players set ticks final_episode 10


### Teams Related

# Teams Defeated
scoreboard objectives add team1Death dummy
scoreboard players set ticks team1Death 0

scoreboard objectives add team2Death dummy
scoreboard players set ticks team2Death 0

scoreboard objectives add team3Death dummy
scoreboard players set ticks team3Death 0

scoreboard objectives add team4Death dummy
scoreboard players set ticks team4Death 0

scoreboard objectives add team5Death dummy
scoreboard players set ticks team5Death 0

# Total Teams Alive
scoreboard objectives add teamsAlive dummy
scoreboard players set ticks teamsAlive 5


# Deaths Scoreboard
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard players set @a deaths 0

