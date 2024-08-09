execute store result score xfacing pkmoves.global run data get entity @s Rotation[0]
execute if score xfacing pkmoves.global matches -45..45 rotated 0 0 run function pkmoves:wall_run/wall_detection

execute if score xfacing pkmoves.global matches 46..135 rotated 90 0 run function pkmoves:wall_run/wall_detection

execute if score xfacing pkmoves.global matches 136..179 rotated 180 0 run function pkmoves:wall_run/wall_detection
execute if score xfacing pkmoves.global matches -180..-135 rotated 180 0 run function pkmoves:wall_run/wall_detection

execute if score xfacing pkmoves.global matches -134..-44 rotated 270 0 run function pkmoves:wall_run/wall_detection
