schedule function ambient_hazards:integrate_players 5s

## ---- Add players to scoreboard ----

execute as @a unless entity @s[scores={AmbientH_Scale=0..}] unless entity @s[scores={AmbientH_Scale=..0}] run scoreboard players set @s AmbientH_Scale 0
execute as @a unless entity @s[scores={AmbientH_Dialogue=0..}] unless entity @s[scores={AmbientH_Dialogue=..0}] run scoreboard players set @s AmbientH_Dialogue 0
execute as @a unless score @s AmbientH_Wetness matches 0.. run scoreboard players set @s AmbientH_Wetness 0
execute as @a unless score @s AmbientH_Hydration matches 0.. run scoreboard players set @s AmbientH_Hydration 20
execute as @a unless score @s AmbientH_DrinkTea matches 0.. run scoreboard players set @s AmbientH_DrinkTea 0
execute as @a unless score @s AmbientH_DrinkNog matches 0.. run scoreboard players set @s AmbientH_DrinkNog 0