## ---- Dialoge ----
execute as @s[scores={AmbientH_Scale=..0}] run tellraw @s {"text": "Thats a bit cold.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=1..399}] run tellraw @s {"text": "That will cool me down some.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=400..799}] run tellraw @s {"text": "I really needed that, I was starting to get desperate.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=800..}] run tellraw @s {"text": "More, MORE! I'm still dying from this heat!","color": "aqua","italic": true,"bold": true}

## ---- Warming Effect ----
execute as @s[scores={AmbientH_Scale=..0}] at @s run scoreboard players remove @s AmbientH_Scale 50
execute as @s[scores={AmbientH_Scale=1..799}] at @s run scoreboard players remove @s AmbientH_Scale 100
execute as @s[scores={AmbientH_Scale=800..}] at @s run scoreboard players remove @s AmbientH_Scale 250

## ---- Schedule revoke ----
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 0 run scoreboard players set @s AmbientH_DrinkWater 3
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 1 run scoreboard players set @s AmbientH_DrinkWater 4
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 2 run scoreboard players set @s AmbientH_DrinkWater 5
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 3 run scoreboard players set @s AmbientH_DrinkWater 10