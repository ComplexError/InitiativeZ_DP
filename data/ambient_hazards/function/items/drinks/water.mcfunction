## ---- Dialoge ----
execute as @s[scores={AmbientH_Scale=..100}] run tellraw @s {"text": "Thats a bit cold.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=100..399}] run tellraw @s {"text": "That will cool me down some.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=400..799}] run tellraw @s {"text": "I really needed that, I was starting to get desperate.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=800..}] run tellraw @s {"text": "More, MORE! I'm still dying from this heat!","color": "aqua","italic": true,"bold": true}

## ---- Warming Effect ----
execute as @s[scores={AmbientH_Scale=..0}] at @s run scoreboard players remove @s AmbientH_Scale 50
execute as @s[scores={AmbientH_Scale=1..799}] at @s run scoreboard players remove @s AmbientH_Scale 100
execute as @s[scores={AmbientH_Scale=800..}] at @s run scoreboard players remove @s AmbientH_Scale 250

## ---- Hydration ----
execute as @s[scores={AmbientH_Hydration=0..}] at @s run scoreboard players set @s AmbientH_Hydration 20
execute as @a[scores={AmbientH_Hydration=0..}] at @s run function ambient_hazards:hydration/meter

## ---- Schedule revoke ----
execute as @s run scoreboard players set @s AmbientH_DrinkWater 10