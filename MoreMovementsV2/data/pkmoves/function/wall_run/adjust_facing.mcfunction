execute store result score xfacing pkmoves.global run data get entity @s Rotation[0]
execute if score xfacing pkmoves.global matches -45..45 run function pkmoves:wall_run/detect_at_given_facing {xfacing:0}

execute if score xfacing pkmoves.global matches 46..135 run function pkmoves:wall_run/detect_at_given_facing {xfacing:90}

execute if score xfacing pkmoves.global matches 136..179 run function pkmoves:wall_run/detect_at_given_facing {xfacing:180}
execute if score xfacing pkmoves.global matches -180..-135 run function pkmoves:wall_run/detect_at_given_facing {xfacing:180}

execute if score xfacing pkmoves.global matches -134..-44 run function pkmoves:wall_run/detect_at_given_facing {xfacing:270}

