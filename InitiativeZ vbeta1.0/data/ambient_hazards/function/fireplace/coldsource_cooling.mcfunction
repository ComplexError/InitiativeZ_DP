## ---- Cools Player ----

execute at @s as @s if block ^ ^1 ^ minecraft:soul_campfire[lit=true] run scoreboard players remove @s AmbientH_Scale 20
execute at @s as @s if block ^ ^2 ^ minecraft:soul_campfire[lit=true] run scoreboard players remove @s AmbientH_Scale 16