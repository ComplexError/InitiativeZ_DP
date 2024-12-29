## ---- Hydration level awarenss ----
execute if score @s AmbientH_Hydration matches 10 run return run tellraw @s {"text": "My throat is a bit parched.","color": "#FFBF0F","italic": true}
execute if score @s AmbientH_Hydration matches 5 run return run tellraw @s {"text": "I should probably get some water soon..","color": "#FFBF0F","italic": false}
execute if score @s AmbientH_Hydration matches 3 run return run tellraw @s {"text": "I'm going to be in trouble if I don't get water...","color": "#FFBF0F","italic": false}
execute if score @s AmbientH_Hydration matches 1 run return run tellraw @s {"text": "I need to find some water this instant!","color": "gold","bold": true}
execute if score @s AmbientH_Hydration matches 0 run return run tellraw @s {"text": "I am going to die of dehydration...","color": "dark_red","bold": true}