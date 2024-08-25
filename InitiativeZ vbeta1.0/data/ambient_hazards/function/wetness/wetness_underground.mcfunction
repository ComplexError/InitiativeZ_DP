## ---- Test for Cave rain ----
execute as @s at @s if predicate ambient_hazards:visible_sky run function a_h:wetness/wetness_cool
execute as @s at @s unless predicate ambient_hazards:visible_sky run scoreboard players remove @s AmbientH_Wetness 20