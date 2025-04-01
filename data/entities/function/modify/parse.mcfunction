## ---- Assign number & tags ----

## -- Number generator --
execute as @s unless entity @s[scores={entity.random=0..}] run function entities:modify/generate_number

## -- Mob detection (head armor slot available) --
execute as @s[scores={entity.random=0..}] run function entities:modify/mobs/global

## -- Tag for loop break --
tag @s[scores={entity.random=0..}] add entity.parsed
tag @s add shuffled