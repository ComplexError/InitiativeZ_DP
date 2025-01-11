## ---- Chill wet players ----
execute as @s[scores={AmbientH_Wetness=2000..}] run scoreboard players remove @s AmbientH_Scale 0
execute as @s[scores={AmbientH_Wetness=4000..}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[scores={AmbientH_Wetness=6000..}] run scoreboard players remove @s AmbientH_Scale 2
execute as @s[scores={AmbientH_Wetness=8000..}] run scoreboard players remove @s AmbientH_Scale 3

## ---- Drip particles ----
execute as @s[scores={AmbientH_Wetness=1000..2999}] at @s unless block ~ ~ ~ water run particle falling_water ~ ~0.3 ~ 0.2 0.2 0.2 0 3 force
execute as @s[scores={AmbientH_Wetness=3000..5999}] at @s unless block ~ ~ ~ water run particle falling_water ~ ~0.5 ~ 0.2 0.2 0.2 0 6 force
execute as @s[scores={AmbientH_Wetness=6000..8999}] at @s unless block ~ ~ ~ water run particle falling_water ~ ~0.7 ~ 0.2 0.4 0.2 0 9 force
execute as @s[scores={AmbientH_Wetness=9000..}] at @s unless block ~ ~ ~ water run particle falling_water ~ ~1 ~ 0.2 0.4 0.2 0 12 force