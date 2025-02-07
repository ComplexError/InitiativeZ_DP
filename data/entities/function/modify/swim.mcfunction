## ---- Teleport to keep zombie above water ----
tp @s ~ ~ ~ facing entity @p[distance=..30]

execute store result score @s entity.posx1 run data get entity @s Pos[0] 1000
execute store result score @s entity.posy1 run data get entity @s Pos[1] 1000
execute store result score @s entity.posz1 run data get entity @s Pos[2] 1000

tp @s ^ ^0.05 ^0.1 facing entity @p[distance=..30]
#execute as @s if block ~ ~ ~ water run tp @s ~ ~0.25 ~ facing entity @p[distance=..30]

execute store result score @s entity.posx2 run data get entity @s Pos[0] 1000
execute store result score @s entity.posy2 run data get entity @s Pos[1] 1000
execute store result score @s entity.posz2 run data get entity @s Pos[2] 1000

scoreboard players operation @s entity.posx2 -= @s entity.posx1
scoreboard players operation @s entity.posy2 -= @s entity.posy1
scoreboard players operation @s entity.posz2 -= @s entity.posz1

execute store result entity @s Motion[0] double 0.0018 run scoreboard players get @s entity.posx2
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get @s entity.posy2
execute store result entity @s Motion[2] double 0.0018 run scoreboard players get @s entity.posz2

execute at @s run playsound entity.boat.paddle_water hostile @p ~ ~ ~ 1