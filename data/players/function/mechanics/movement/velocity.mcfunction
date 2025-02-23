execute store result score .temp entity.posx1 run data get entity @s Pos[0] 100.0
execute store result score .temp entity.posz1 run data get entity @s Pos[2] 100.0

scoreboard players operation @s entity.posx2 = .temp entity.posx1
scoreboard players operation @s entity.posx2 -= @s entity.posx1
scoreboard players operation @s entity.posz2 = .temp entity.posz1
scoreboard players operation @s entity.posz2 -= @s entity.posz1

scoreboard players operation @s entity.posx1 = .temp entity.posx1
scoreboard players operation @s entity.posz1 = .temp entity.posz1

execute as @s run function players:mechanics/movement/speed