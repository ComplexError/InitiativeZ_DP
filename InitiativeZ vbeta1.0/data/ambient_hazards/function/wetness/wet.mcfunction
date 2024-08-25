## ---- Chill wet players ----
execute as @s[scores={AmbientH_Wetness=2000..}] run scoreboard players remove @s ambient_hazards 0
execute as @s[scores={AmbientH_Wetness=4000..}] run scoreboard players remove @s ambient_hazards 1
execute as @s[scores={AmbientH_Wetness=6000..}] run scoreboard players remove @s ambient_hazards 2
execute as @s[scores={AmbientH_Wetness=8000..}] run scoreboard players remove @s ambient_hazards 3

## ---- Drip particles ----
execute as @a[scores={AmbientH_Wetness=1000..2999}] at @s run particle falling_water ~ ~1 ~ 0.2 0.2 0.2 0 3 force
execute as @a[scores={AmbientH_Wetness=3000..5999}] at @s run particle falling_water ~ ~1 ~ 0.2 0.2 0.2 0 6 force
execute as @a[scores={AmbientH_Wetness=6000..8999}] at @s run particle falling_water ~ ~1 ~ 0.2 0.2 0.2 0 9 force
execute as @a[scores={AmbientH_Wetness=9000..}] at @s run particle falling_water ~ ~1 ~ 0.2 0.2 0.2 0 12 force