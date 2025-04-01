## ---- Assign number & tags ----

## -- Number generator --
execute store result score @s entity.random run random value 1..100
#execute as @s run function entities:modify/generate_number

## -- Mob detection --
execute as @s run function entities:modify/hide_tadpole

execute as @s[scores={entity.random=0..79}] at @s run summon zombie ~ ~ ~ {CanPickUpLoot:1b,CanBreakDoors:1b,Tags:["mob","zombie"]}
execute as @s[scores={entity.random=80..89}] at @s if biome ~ ~ ~ minecraft:desert run summon husk ~ ~ ~ {CanPickUpLoot:1b,CanBreakDoors:1b,Tags:["mob"]}
execute as @s[scores={entity.random=90..100}] at @s run summon zombie_villager ~ ~ ~ {CanPickUpLoot:1b,CanBreakDoors:1b,Tags:["mob"]}
execute as @s at @s run spreadplayers ~ ~ 1 20 false @n[tag=mob,tag=!shuffled]

## -- Vanish tadpole --
tag @s add entity.ignore.kill