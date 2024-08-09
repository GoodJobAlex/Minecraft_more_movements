scoreboard players add @a[scores={pkmoves.stamina=..1000}] pkmoves.stamina 100
scoreboard players set @a[scores={pkmoves.stamina=1000..}] pkmoves.stamina 1000
tag @a[scores={pkmoves.stamina=1000..}] remove pkmoves.fatigue
schedule function pkmoves:add_stamina 20