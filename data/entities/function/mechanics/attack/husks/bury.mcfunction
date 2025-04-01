## ---- Teleport to keep zombie above water ----
execute as @s on target run execute as @s at @s run tp ~ ~-1 ~

execute as @s at @s run playsound minecraft:block.composter.ready hostile @a[distance=..8] ~ ~ ~ 1 0.7 1
execute as @s[scores={entity.random=10..}] at @s run playsound minecraft:entity.zombie.hurt hostile @a[distance=..6] ~ ~ ~ 2 0.7 1

scoreboard players set @s entity.specialCD 0