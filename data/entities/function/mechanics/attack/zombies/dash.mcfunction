## ---- Teleport behind player ----

execute as @p at @s run tp @n[tag=Dasher,tag=dashing] ^ ^ ^-2 facing entity @p[gamemode=adventure]

execute as @s at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..20] ~ ~ ~ 1 0.5 1
execute as @s at @s run playsound minecraft:entity.husk.death hostile @a[distance=..20] ~ ~ ~ 1 0.7 1

scoreboard players set @s entity.specialCD 0
tag @s remove dashing