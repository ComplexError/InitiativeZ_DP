## ---- Warms Player ----

execute at @s as @s if block ^ ^1 ^ minecraft:smoker[lit=true] run scoreboard players add @s AmbientH_Scale 20
execute at @s as @s if block ^ ^2 ^ minecraft:smoker[lit=true] run scoreboard players add @s AmbientH_Scale 16

execute at @s as @s if block ^ ^1 ^ minecraft:campfire[lit=true] run scoreboard players add @s AmbientH_Scale 35
execute at @s as @s if block ^ ^2 ^ minecraft:campfire[lit=true] run scoreboard players add @s AmbientH_Scale 28

execute at @s as @s if block ^ ^1 ^ minecraft:furnace[lit=true] run scoreboard players add @s AmbientH_Scale 45
execute at @s as @s if block ^ ^2 ^ minecraft:furnace[lit=true] run scoreboard players add @s AmbientH_Scale 36

execute at @s as @s if block ^ ^1 ^ minecraft:blast_furnace[lit=true] run scoreboard players add @s AmbientH_Scale 55
execute at @s as @s if block ^ ^2 ^ minecraft:blast_furnace[lit=true] run scoreboard players add @s AmbientH_Scale 44