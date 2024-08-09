execute at @s run function pkmoves:wall_run/end_wallrun
attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
execute if function pkmoves:raycast/start_raycast if score walltip pkmoves.global matches 1 run function pkmoves:ledging/ledge_up
