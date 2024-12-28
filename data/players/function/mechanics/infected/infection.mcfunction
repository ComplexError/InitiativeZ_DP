## -- Apply Bleed --
execute as @s run scoreboard players set @s Player_Infected 1
execute as @s[scores={Player_Infected=1}] at @s run function players:mechanics/infected/plague_effect