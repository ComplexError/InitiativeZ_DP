## -- Bleeding --
execute as @a unless entity @s[scores={Player_Bleeding=1..}] run scoreboard players set @s Player_Bleeding 0
execute as @a[scores={Player_Bleeding=1..}] at @s run function players:mechanics/bleeding/bleeding_effect

## -- Infected --
execute as @a unless entity @s[scores={Player_Infected=1..}] run scoreboard players set @s Player_Infected 0
execute as @a[scores={Player_Infected=1..}] at @s run function players:mechanics/infected/plague_effect