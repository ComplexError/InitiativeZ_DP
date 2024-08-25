## Dialoge (Heating)

execute as @a[scores={AmbientH_Scale=100..299}] if score @s AmbientH_Dialogue matches 0 run tellraw @s {"text": "It's a little toasty.","color": "#fc9700","italic": true}
execute as @a[scores={AmbientH_Scale=100..299}] if score @s AmbientH_Dialogue matches 0 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=300..499}] if score @s AmbientH_Dialogue matches 1 run tellraw @s {"text": "It is too hot to be here!","color": "#fc7a00","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=300..499}] if score @s AmbientH_Dialogue matches 1 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=500..799}] if score @s AmbientH_Dialogue matches 2 run tellraw @s {"text": "These temperatures are unbearable...","color": "#fc5000","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=500..799}] if score @s AmbientH_Dialogue matches 2 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=800..999}] if score @s AmbientH_Dialogue matches 3 run tellraw @s {"text": "I need to find water... NOW...","color": "#fc3200","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=800..999}] if score @s AmbientH_Dialogue matches 3 run scoreboard players add @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=1000..}] if score @s AmbientH_Dialogue matches 4 run tellraw @s {"text": "Wh-Who am I...? I feel kinda... crispy...?","color": "#bd1802","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=1000..}] if score @s AmbientH_Dialogue matches 4 run scoreboard players add @s AmbientH_Dialogue 1

## Dialoge (Cooling)

execute as @a[scores={AmbientH_Scale=0..99}] if score @s AmbientH_Dialogue matches 1 run tellraw @s {"text": "This temperature is tolerable.","color": "#f4ff94","italic": true}
execute as @a[scores={AmbientH_Scale=0..99}] if score @s AmbientH_Dialogue matches 1 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=100..299}] if score @s AmbientH_Dialogue matches 2 run tellraw @s {"text": "I am cooling down slightly.","color": "#f7cf05","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=100..299}] if score @s AmbientH_Dialogue matches 2 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=300..499}] if score @s AmbientH_Dialogue matches 3 run tellraw @s {"text": "Its still to hot to be here...","color": "#f7ae05","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=300..499}] if score @s AmbientH_Dialogue matches 3 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=500..799}] if score @s AmbientH_Dialogue matches 4 run tellraw @s {"text": "This heat is still excessive...","color": "#f78205","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=500..799}] if score @s AmbientH_Dialogue matches 4 run scoreboard players remove @s AmbientH_Dialogue 1

execute as @a[scores={AmbientH_Scale=800..999}] if score @s AmbientH_Dialogue matches 5 run tellraw @s {"text": "Ugh... my head is killing me. Heatstroke could've killed me...","color": "#f23e02","bold": true,"italic": true}
execute as @a[scores={AmbientH_Scale=800..999}] if score @s AmbientH_Dialogue matches 5 run scoreboard players remove @s AmbientH_Dialogue 1