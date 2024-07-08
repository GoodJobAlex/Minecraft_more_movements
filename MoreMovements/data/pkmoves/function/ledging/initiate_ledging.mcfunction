

attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
execute if function pkmoves:raycast/walls_around run function pkmoves:ledging/ledging_init
