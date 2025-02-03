## -- Cold Area Breath --
execute as @a[gamemode=adventure,predicate=ambient_hazards:high_altitude,scores={AmbientH_Scale=-1200..0}] at @s if biome ~ ~ ~ #ambient_hazards:is_cold run function ambient_hazards:coldzone/cold_breath

