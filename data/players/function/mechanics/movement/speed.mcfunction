scoreboard players operation @s entity.sx = @s entity.posx2
scoreboard players operation @s entity.sz = @s entity.posz2

execute if score @s entity.sx matches ..-1 run scoreboard players operation @s entity.sx *= .temp generic.const
execute if score @s entity.sz matches ..-1 run scoreboard players operation @s entity.sz *= .temp generic.const

scoreboard players operation @s entity.speed = @s entity.sx
scoreboard players operation @s entity.speed += @s entity.sz