## ---- Score checks ----

## -- Unique baby zombie field --
execute as @s[scores={entity.random=0..10}] run function entities:modify/mobs/zombies/southern/bzom1
execute as @s[scores={entity.random=11..20}] run function entities:modify/mobs/zombies/southern/bzom2