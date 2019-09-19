# Adds one to the episode displayed
scoreboard players add ticks episode 1

# Broadcasts the new episode to everyone
title @a title {"text":"Episodio ","color":"cyan","extra":[{"score":{"name":"ticks","objective":"episode"}}]}
tellraw @a {"text":"---------- Episodio ","color":"aqua","extra":[{"score":{"name":"ticks","objective":"episode"}},{"text":" ----------"}]}

# Execute specific extra functions per episode
execute if score ticks episode matches 1 run function uhc:anounce_episode_extra/episode1_extra
execute if score ticks episode matches 2 run function uhc:anounce_episode_extra/episode2_extra
execute if score ticks episode matches 3 run function uhc:anounce_episode_extra/episode3_extra
execute if score ticks episode matches 4 run function uhc:anounce_episode_extra/episode4_extra
execute if score ticks episode matches 5 run function uhc:anounce_episode_extra/episode5_extra
execute if score ticks episode matches 6 run function uhc:anounce_episode_extra/episode6_extra
execute if score ticks episode matches 7 run function uhc:anounce_episode_extra/episode7_extra
execute if score ticks episode matches 8 run function uhc:anounce_episode_extra/episode8_extra
execute if score ticks episode matches 9 run function uhc:anounce_episode_extra/episode9_extra
execute if score ticks episode matches 10 run function uhc:anounce_episode_extra/episode10_extra

# If the current episode isn't the last episode it schedules a new episode announcement in 25 minutes
execute if score ticks episode < ticks final_episode run function uhc:schedule_episode_announcement