execute if function pkmoves:raycast/wallrun_test positioned ~ ~1 ~ run tag @s add pkmoves.wall_run
execute unless entity @s[tag=pkmoves.wall_run] run return 0
scoreboard players set @s pkmoves.wall_run_counter 80

summon item_display ~ ~-1.3 ~ {interpolation_duration:0,teleport_duration:0,Tags:["pkmoves.platform"],Passengers:[{id:"minecraft:shulker",Silent:1b,DeathLootTable:"asdasd",Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["pkmoves.wallrun_platform"]}]}
execute positioned ~ ~-1.3 ~ run scoreboard players operation @n[tag=pkmoves.platform,type=item_display] pkmoves.id = @s pkmoves.id
tag @s remove pkmoves.screen_tilt_applied

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7

attribute @s minecraft:generic.movement_speed modifier add pkmoves.wall_run_boost 0.08 add_value
