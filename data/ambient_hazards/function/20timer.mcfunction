## -- Cold Area Breath --
execute as @a[scores={AmbientH_Scale=-1200..}] at @s if biome ~ ~ ~ #ambient_hazards:is_cold unless predicate ambient_hazards:underground run function ambient_hazards:coldzone/cold_breath

