tag @s remove pkmoves.ledged
function pkmoves:ledging/end_ledging
attribute @s minecraft:generic.gravity modifier remove pkmoves.wall_run
particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s


tag @s remove pkmoves.wall_run_cool_down

attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost