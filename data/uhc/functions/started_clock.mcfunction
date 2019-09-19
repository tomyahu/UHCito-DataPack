# Check Golden Head Eaten
function uhc:enchanted_apple_eaten

## Update compass position
execute if score ticks compassActive matches 1 run function uhc:do_compass_calculation

## Check if teams died
# Team 1
execute if score ticks team1Death matches 0 run execute unless entity @a[team=team1, scores={deaths=0}] run function uhc:teams_defeated/team1
# Team 2
execute if score ticks team2Death matches 0 run execute unless entity @a[team=team2, scores={deaths=0}] run function uhc:teams_defeated/team2
# Team 3
execute if score ticks team3Death matches 0 run execute unless entity @a[team=team3, scores={deaths=0}] run function uhc:teams_defeated/team3
# Team 4
execute if score ticks team4Death matches 0 run execute unless entity @a[team=team4, scores={deaths=0}] run function uhc:teams_defeated/team4
# Team 5
execute if score ticks team5Death matches 0 run execute unless entity @a[team=team5, scores={deaths=0}] run function uhc:teams_defeated/team5

## Check for winner
execute if score ticks teamsAlive matches 1 run function uhc:victory