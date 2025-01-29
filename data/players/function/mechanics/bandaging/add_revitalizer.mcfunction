tag @s add revitalizer
title @s actionbar {"bold":true,"color":"gray","text":"You are being bandaged"}
execute as @s at @s run particle dust{color:[1.000,0.922,0.220],scale:1} ~ ~1 ~ 0.3 0.3 0.3 0 10 force
playsound minecraft:block.mud.fall player @s ~ ~ ~ 1 0.5 1