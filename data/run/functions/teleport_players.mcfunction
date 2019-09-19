## Spreads the players so that each team is separated by 1500 blocks
spreadplayers 0 0 2000 1500 true @a

## Apply Effects so that players cant move while waiting for start function
effect give @a minecraft:blindness 1000000 100
effect give @a minecraft:slowness 1000000 100
effect give @a minecraft:jump_boost 1000000 200
effect give @a minecraft:saturation 1000000 100
effect give @a minecraft:water_breathing 1000000 255
function uhc:saturation_reset/run 5s