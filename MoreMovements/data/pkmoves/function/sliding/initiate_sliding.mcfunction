execute if block ~ ~-1.5 ~ #pkmoves:not_solid if entity @s[tag=pkmoves.is_in_air] run return fail
function pkmoves:wall_run/end_wallrun
scoreboard players set @s pkmoves.sliding_cd 60

execute rotated ~ 0 anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {Tags:["pkmoves.init","pkmoves.slide_hitbox"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"asdasd",NoAI:1b,AttachFace:1b,Color:14b}]}
scoreboard players operation @n[tag=pkmoves.init,type=item_display] pkmoves.id = @s pkmoves.id
tag @n[tag=pkmoves.init,type=item_display] remove pkmoves.init

execute rotated ~ 0 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["pkmoves.init","pkmoves.slide_hitbox"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"asdasd",NoAI:1b,AttachFace:1b,Color:14b}]}
scoreboard players operation @n[tag=pkmoves.init,type=item_display] pkmoves.id = @s pkmoves.id
tag @n[tag=pkmoves.init,type=item_display] remove pkmoves.init


attribute @s minecraft:generic.safe_fall_distance modifier add pkmoves.slide_protection 100 add_value
attribute @s generic.movement_speed modifier add pkmoves.slide 0.04 add_value

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7


data modify storage easycooldown:storage data.input set value {ticks:60,name:'"sliding"',color:"blue"}
function easycooldown:api/initiate_display

tag @s add pkmoves.slide