scoreboard players set terminate_wallrun pkmoves.global 0
execute unless function pkmoves:raycast/walls_around run function pkmoves:ledging/end_ledging
execute unless predicate pkmoves:sneaking run function pkmoves:ledging/end_ledging


execute if score terminate_wallrun pkmoves.global matches 1 run return fail
