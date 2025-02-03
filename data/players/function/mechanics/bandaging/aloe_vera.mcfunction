tag @s add bandaging
execute at @s[tag=bandaging] as @n[scores={Player_BandageCD=1..,Master_Looktarget=1..},tag=!bandaging] run function players:mechanics/bandaging/reject
execute at @s[tag=bandaging] as @n[scores={Player_BandageCD=0,Master_Looktarget=1..},tag=!bandaging] run function players:mechanics/bandaging/add_aloe

clear @s[tag=bandaging] orange_dye[minecraft:max_stack_size=2] 1
playsound minecraft:block.mud.fall player @s[tag=bandaging] ~ ~ ~ 1 0.5 1
execute as @s[tag=bandaging] run function master:callback/schedule {ticks:1200,selector:"@s",command:"function players:mechanics/bandaging/clear_tags"}