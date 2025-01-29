tag @s add bandaging
execute as @a[tag=!bandaging,scores={Player_BandageCD=1..},predicate=master:is_sneaking] at @s if entity @p[distance=..4,tag=bandaging] run function players:mechanics/bandaging/reject
execute as @a[tag=!bandaging,scores={Player_BandageCD=0},predicate=master:is_sneaking] at @s if entity @p[distance=..4,tag=bandaging] run function players:mechanics/bandaging/add_antibiotic
clear @s[tag=bandaging] lime_dye[minecraft:max_stack_size=2] 1
playsound minecraft:block.mud.fall player @s[tag=bandaging] ~ ~ ~ 1 0.5 1
execute as @s[tag=bandaging] run schedule function players:mechanics/bandaging/clear_tags 30s