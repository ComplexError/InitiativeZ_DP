## -- Apply Bleed --
execute as @s run scoreboard players set @s Player_Bleeding 1
execute as @s run damage @s 1 generic
execute as @s at @s run function players:mechanics/bleeding/bleeding_particle1
execute as @s run function master:callback/schedule {ticks:10,selector:"@s",command:"function players:mechanics/bleeding/bleeding_particle2"}
execute as @s at @s run tellraw @s {"text":"I think I'm bleeding.","color":"dark_red"}

## -- Schudule next bleed event --
execute as @s run function master:callback/schedule {ticks:600,selector:"@s",command:"function players:mechanics/bleeding/bleeding_effect"}