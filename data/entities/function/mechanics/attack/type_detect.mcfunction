## ---- Detect type of mob and available attacks ----

## -- Zombies --
execute as @s[tag=Lunger,scores={entity.specialCD=20..}] at @s if entity @p[distance=..4,gamemode=adventure] run function entities:mechanics/attack/zombies/lunge
execute as @s[tag=Dasher,tag=!dashing,scores={entity.specialCD=30..}] at @s if entity @p[distance=..5,gamemode=adventure] run function entities:mechanics/attack/zombies/dash_start

## -- Husk --
execute as @s[tag=Bury,scores={entity.specialCD=25..}] at @s if entity @p[distance=..2,gamemode=adventure] run function entities:mechanics/attack/husks/bury