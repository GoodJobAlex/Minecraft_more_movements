tag @s remove pkmoves.ledged
function pkmoves:ledging/end_ledging
attribute @s minecraft:generic.gravity modifier remove pkmoves.wall_run
tag @s remove pkmoves.wall_run_cool_down
attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
tag @s remove pkmoves.jumped