## ---- Teleport to keep zombie above water ----
tp @s ~ ~ ~

execute store result score @s entity.posx1 run data get entity @s Pos[0] 1000
execute store result score @s entity.posy1 run data get entity @s Pos[1] 1000
execute store result score @s entity.posz1 run data get entity @s Pos[2] 1000

tp @s ^ ^0.03 ^0.05

execute store result score @s entity.posx2 run data get entity @s Pos[0] 1000
execute store result score @s entity.posy2 run data get entity @s Pos[1] 1000
execute store result score @s entity.posz2 run data get entity @s Pos[2] 1000

scoreboard players operation @s entity.posx2 -= @s entity.posx1
scoreboard players operation @s entity.posy2 -= @s entity.posy1
scoreboard players operation @s entity.posz2 -= @s entity.posz1

execute store result entity @s Motion[0] double 0.02 run scoreboard players get @s entity.posx2
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s entity.posy2
execute store result entity @s Motion[2] double 0.02 run scoreboard players get @s entity.posz2

execute as @s at @s run playsound minecraft:block.gravel.hit hostile @a[distance=..6] ~ ~ ~ 2 0.7 1
execute as @s[scores={entity.random=10..}] at @s run playsound minecraft:entity.zombie.hurt hostile @a[distance=..6] ~ ~ ~ 2 0.7 1

scoreboard players set @s entity.specialCD 0