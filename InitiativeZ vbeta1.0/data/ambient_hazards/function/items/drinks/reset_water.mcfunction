execute as @s run scoreboard players remove @s AmbientH_DrinkWater 1
execute as @s if score @s AmbientH_DrinkWater matches 0 run advancement revoke @s only ambient_hazards:drinks/water