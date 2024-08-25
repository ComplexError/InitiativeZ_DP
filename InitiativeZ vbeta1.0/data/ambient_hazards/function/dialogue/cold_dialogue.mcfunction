## Dialoge (Chilling)

execute as @a[scores={AmbientH_Scale=-299..-100}] if score @s AmbientH_Dialogue matches 0 run tellraw @s {"text": "It's kinda chilly...","color": "#88f1fc","italic": true}
execute as @a[scores={AmbientH_Scale=-299..-100}] if score @s AmbientH_Dialogue matches 0 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-499..-300}] if score @s AmbientH_Dialogue matches -1 run tellraw @s {"text": "It's getting really cold!","color": "#23e8fc","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-499..-300}] if score @s AmbientH_Dialogue matches -1 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-799..-500}] if score @s AmbientH_Dialogue matches -2 run tellraw @s {"text": "I am going to f-freeze at this rate...","color": "#05c7fc","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-799..-500}] if score @s AmbientH_Dialogue matches -2 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-999..-800}] if score @s AmbientH_Dialogue matches -3 run tellraw @s {"text": "I-I-I... c-c-can't feel my limbs...","color": "#05a6fc","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-999..-800}] if score @s AmbientH_Dialogue matches -3 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=..-1000}] if score @s AmbientH_Dialogue matches -4 run tellraw @s {"text": "*shivers uncontrollably*","color": "#0578fc","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=..-1000}] if score @s AmbientH_Dialogue matches -4 run scoreboard players remove @s AmbientH_Dialogue 1

## Dialoge (Warming)

execute as @a[scores={AmbientH_Scale=-99..0}] if score @s AmbientH_Dialogue matches -1 run tellraw @s {"text": "The cold isn't too bad now.","color": "#94faff","italic": true}
execute as @a[scores={AmbientH_Scale=-99..0}] if score @s AmbientH_Dialogue matches -1 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-299..-100}] if score @s AmbientH_Dialogue matches -2 run tellraw @s {"text": "I am warming up a bit.","color": "#3feafc","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-299..-100}] if score @s AmbientH_Dialogue matches -2 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-499..-300}] if score @s AmbientH_Dialogue matches -3 run tellraw @s {"text": "Still too cold to be here.","color": "#20cefa","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-499..-300}] if score @s AmbientH_Dialogue matches -3 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-799..-500}] if score @s AmbientH_Dialogue matches -4 run tellraw @s {"text": "It's still frigid here...","color": "#17a8e6","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-799..-500}] if score @s AmbientH_Dialogue matches -4 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=-999..-800}] if score @s AmbientH_Dialogue matches -5 run tellraw @s {"text": "I-I might b-b-be hypothermic-c-c...","color": "#1187d6","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=-999..-800}] if score @s AmbientH_Dialogue matches -5 run scoreboard players add @s AmbientH_Dialogue 1