schedule function ambient_hazards:hydration/hydration_timer 60s

execute as @a[scores={AmbientH_Hydration=1..}] run scoreboard players remove @s AmbientH_Hydration 1
execute as @a[scores={AmbientH_Hydration=0..}] run function ambient_hazards:hydration/meter