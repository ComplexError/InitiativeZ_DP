## ---- Overheats Player ----

execute at @s as @s if block ^ ^1 ^ minecraft:smoker[lit=true] run scoreboard players add @s AmbientH_Scale 8
execute at @s as @s if block ^ ^2 ^ minecraft:smoker[lit=true] run scoreboard players add @s AmbientH_Scale 4

execute at @s as @s if block ^ ^1 ^ minecraft:campfire[lit=true] run scoreboard players add @s AmbientH_Scale 14
execute at @s as @s if block ^ ^2 ^ minecraft:campfire[lit=true] run scoreboard players add @s AmbientH_Scale 7

execute at @s as @s if block ^ ^1 ^ minecraft:furnace[lit=true] run scoreboard players add @s AmbientH_Scale 28
execute at @s as @s if block ^ ^2 ^ minecraft:furnace[lit=true] run scoreboard players add @s AmbientH_Scale 14

execute at @s as @s if block ^ ^1 ^ minecraft:blast_furnace[lit=true] run scoreboard players add @s AmbientH_Scale 58
execute at @s as @s if block ^ ^2 ^ minecraft:blast_furnace[lit=true] run scoreboard players add @s AmbientH_Scale 29