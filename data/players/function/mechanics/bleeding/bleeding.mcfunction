## -- Apply Bleed --
execute as @s run scoreboard players set @s Player_Bleeding 1
execute as @s[scores={Player_Bleeding=1}] at @s run function players:mechanics/bleeding/bleeding_effect