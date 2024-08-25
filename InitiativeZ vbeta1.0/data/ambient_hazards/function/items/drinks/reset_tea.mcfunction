execute as @s run scoreboard players remove @s AmbientH_DrinkTea 1
execute as @s if score @s AmbientH_DrinkTea matches 0 run advancement revoke @s only ambient_hazards:drinks/tea