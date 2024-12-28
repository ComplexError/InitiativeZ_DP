## -- Dialogue --
tellraw @s[scores={Player_Infected=1}] {"text":"Good, I was getting worried there","italic": true,"color": "yellow"}
tellraw @s[scores={Player_Infected=0}] {"text":"Kind of waste...","italic": true,"color": "yellow"}

## -- Revoke Bleed and Bandage Use --
advancement revoke @s only players:infect
advancement revoke @s only loot:healing/antidote

## -- Reset Bleed --
scoreboard players set @s Player_Infected 0
