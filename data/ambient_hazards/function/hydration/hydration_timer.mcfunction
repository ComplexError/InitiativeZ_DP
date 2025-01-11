execute as @a[gamemode=adventure,scores={AmbientH_Hydration=0..}] unless biome ~ ~ ~ #ambient_hazards:is_warm run scoreboard players remove @s AmbientH_Hydration 1
execute as @a[gamemode=adventure,scores={AmbientH_Hydration=0..}] if biome ~ ~ ~ #ambient_hazards:is_warm run scoreboard players remove @s AmbientH_Hydration 2
execute as @a[gamemode=adventure,scores={AmbientH_Hydration=0..}] run function ambient_hazards:hydration/meter
execute as @a[gamemode=adventure,scores={AmbientH_Hydration=0..}] run function ambient_hazards:hydration/dialogue