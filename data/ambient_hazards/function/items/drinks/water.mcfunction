## ---- Schedule revoke ----
execute as @s run advancement revoke @s only ambient_hazards:drinks/water
execute as @s run scoreboard players set @s AmbientH_DrinkWater 10

## ---- Dialoge ----
execute as @s[scores={AmbientH_Scale=..-100,AmbientH_DrinkWater=0..,AmbientH_Hydration=13..}] run tellraw @s {"text": "Thats a bit cold.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=..-100,AmbientH_DrinkWater=0..,AmbientH_Hydration=6..12}] run tellraw @s {"text": "Cold, but necessary.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=..-100,AmbientH_DrinkWater=0..,AmbientH_Hydration=..5}] run tellraw @s {"text": "Much better.","color": "blue","italic": true}

execute as @s[scores={AmbientH_Scale=-99..99,AmbientH_DrinkWater=0..,AmbientH_Hydration=13..}] run tellraw @s {"text": "Good to stay ahead.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=-99..99,AmbientH_DrinkWater=0..,AmbientH_Hydration=6..12}] run tellraw @s {"text": "I was starting to need water anyway.","color": "blue","italic": true}
execute as @s[scores={AmbientH_Scale=-99..99,AmbientH_DrinkWater=0..,AmbientH_Hydration=..5}] run tellraw @s {"text": "Much better.","color": "blue","italic": true}

execute as @s[scores={AmbientH_Scale=100..399,AmbientH_DrinkWater=0..,AmbientH_Hydration=13..}] run tellraw @s {"text": "That will cool me down some.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=100..399,AmbientH_DrinkWater=0..,AmbientH_Hydration=6..12}] run tellraw @s {"text": "Good thing, I was getting thirsty.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=100..399,AmbientH_DrinkWater=0..,AmbientH_Hydration=..5}] run tellraw @s {"text": "I really needed that water.","color": "aqua","italic": true}

execute as @s[scores={AmbientH_Scale=400..799,AmbientH_DrinkWater=0..,AmbientH_Hydration=13..}] run tellraw @s {"text": "I really needed that, I was starting to get desperate.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=400..799,AmbientH_DrinkWater=0..,AmbientH_Hydration=6..12}] run tellraw @s {"text": "Yes, finally some water.","color": "aqua","italic": true}
execute as @s[scores={AmbientH_Scale=400..799,AmbientH_DrinkWater=0..,AmbientH_Hydration=..5}] run tellraw @s {"text": "I thought I was gonna die...","color": "aqua","italic": true}

execute as @s[scores={AmbientH_Scale=800..,AmbientH_DrinkWater=0..,AmbientH_Hydration=-1..}] run tellraw @s {"text": "More, MORE! I'm still dying from this heat!","color": "aqua","italic": true,"bold": true}

## ---- Cooling Effect ----
execute as @s[scores={AmbientH_Scale=..0,AmbientH_DrinkWater=0}] at @s run scoreboard players remove @s AmbientH_Scale 50
execute as @s[scores={AmbientH_Scale=1..799,AmbientH_DrinkWater=0}] at @s run scoreboard players remove @s AmbientH_Scale 100
execute as @s[scores={AmbientH_Scale=800..,AmbientH_DrinkWater=0}] at @s run scoreboard players remove @s AmbientH_Scale 250

## ---- Hydration ----
execute as @s[scores={AmbientH_Hydration=0..20}] at @s run scoreboard players set @s AmbientH_Hydration 20
execute as @s[scores={AmbientH_Hydration=21..}] at @s run scoreboard players add @s AmbientH_Hydration 0
execute as @a[scores={AmbientH_Hydration=0..}] at @s run function ambient_hazards:hydration/meter
