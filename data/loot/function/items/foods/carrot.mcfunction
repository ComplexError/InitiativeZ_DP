## ---- Schedule revoke ----
execute as @s run advancement revoke @s only loot:food/carrot

## ---- Hydration ----
effect give @s minecraft:regeneration 1 2 true
execute as @s[scores={AmbientH_Hydration=..24}] at @s run scoreboard players add @s AmbientH_Hydration 1
execute as @a[scores={AmbientH_Hydration=0..}] at @s run function ambient_hazards:hydration/meter
