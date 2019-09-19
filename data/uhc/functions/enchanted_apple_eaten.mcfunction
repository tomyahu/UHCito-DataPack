# Clears resistance and fire resistance effects of someone who ate an enchanted golden apple
effect clear @a[scores={EGAppleEat=1}] minecraft:resistance
effect clear @a[scores={EGAppleEat=1}] minecraft:minecraft:fire_resistance

# Resets the players enchanted golden apple consumption
scoreboard players reset @a[scores={EGAppleEat=1}] EGAppleEat