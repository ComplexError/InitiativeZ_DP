## ---- Dialoge ----
execute as @s[scores={AmbientH_Scale=1..}] run tellraw @s {"text": "That might have been a waste...","color": "gold","italic": true}
execute as @s[scores={AmbientH_Scale=..0}] run tellraw @s {"text": "Ahhh, that eased the cold a bit.","color": "gold","italic": true}

## ---- Warming Effect ----
execute as @s[scores={AmbientH_Scale=1..}] at @s run scoreboard players add @s AmbientH_Scale 20
execute as @s[scores={AmbientH_Scale=..0}] at @s run scoreboard players add @s AmbientH_Scale 100
execute as @s run effect give @s regeneration 2 1 true
execute as @s run effect give @s saturation 1 0 true

## ---- Schedule revoke ----
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 0 run scoreboard players set @s AmbientH_DrinkTea 8
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 1 run scoreboard players set @s AmbientH_DrinkTea 10
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 2 run scoreboard players set @s AmbientH_DrinkTea 15
execute as @s if score Difficulty_Modifier AmbientH_Difficulty matches 3 run scoreboard players set @s AmbientH_DrinkTea 30