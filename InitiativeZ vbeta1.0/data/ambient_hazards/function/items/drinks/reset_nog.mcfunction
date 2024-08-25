execute as @s run scoreboard players remove @s AmbientH_DrinkNog 1
execute as @s if score @s AmbientH_DrinkNog matches 0 run advancement revoke @s only ambient_hazards:drinks/nog