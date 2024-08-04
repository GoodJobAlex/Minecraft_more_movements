execute if function pkmoves:raycast/wallrun_test run tag @s add pkmoves.wall_run
execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if score vmt pkmoves.global matches ..-15 run scoreboard players operation launch_power motion_library.variables = vmt pkmoves.global
execute if score vmt pkmoves.global matches ..-15 run scoreboard players operation launch_power motion_library.variables *= upthrust_multipliyer pkmoves.global

execute if score vmt pkmoves.global matches ..-15 at @s rotated ~ -25 run function manipulation:api/launch_facing

execute unless entity @s[tag=pkmoves.wall_run] run return 0
scoreboard players set @s pkmoves.wall_run_counter 80

attribute @s minecraft:generic.movement_speed modifier add pkmoves.wall_run_boost 0.07 add_value


summon item_display ~ ~-1.25 ~ {interpolation_duration:0,teleport_duration:0,Tags:["pkmoves.platform"],Passengers:[{id:"minecraft:shulker",Silent:1b,DeathLootTable:"asdasd",Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["pkmoves.wallrun_platform"]}]}
execute positioned ~ ~-1.25 ~ run scoreboard players operation @n[tag=pkmoves.platform,type=item_display] pkmoves.id = @s pkmoves.id

tag @s remove pkmoves.screen_tilt_applied
execute run function pkmoves:wall_run/adjust_facing



