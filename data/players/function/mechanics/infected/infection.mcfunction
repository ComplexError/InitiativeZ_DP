## -- Apply Infection --
execute as @s run scoreboard players set @s Player_Infected 1
execute as @s run tellraw @s {"text":"I feel a bit weird...","color":"green","italic": true}
execute as @s run function master:callback/schedule {ticks:600,selector:"@s",command:"function players:mechanics/infected/plague_effect"}