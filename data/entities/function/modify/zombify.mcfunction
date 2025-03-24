## ---- Assign number & tags ----

## -- Number generator --
execute as @s run function entities:modify/generate_number

## -- Mob detection --
execute as @s run function entities:modify/hide_tadpole

execute as @s[scores={entity.random=0..}] at @s run summon zombie ~ ~ ~ {CanPickUpLoot:1b,CanBreakDoors:1b}
execute as @s at @s run spreadplayers ~ ~ 1 3 false @e[type=minecraft:zombie,sort=nearest,limit=1,tag=!shuffled]

## -- Vanish tadpole --
tag @s add entity.ignore.kill