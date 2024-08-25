## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add AmbientH_Scale dummy
scoreboard objectives add AmbientH_Wetness dummy
scoreboard objectives add AmbientH_Dialogue dummy
scoreboard objectives add AmbientH_Death deathCount

## -- Mechanic Cooldowns --
scoreboard objectives add AmbientH_DrinkWater dummy
scoreboard objectives add AmbientH_DrinkNog dummy
scoreboard objectives add AmbientH_DrinkTea dummy

## -- Settings Editor --
scoreboard objectives add AmbientH_Options dummy

## ---- Master Control ----
scoreboard objectives add AmbientH_Difficulty dummy
scoreboard players add Difficulty_Modifier AmbientH_Difficulty 0

function ambient_hazards:stop
function ambient_hazards:integrate_players

execute if score Difficulty_Modifier AmbientH_Difficulty matches 0 run function ambient_hazards:timer1
execute if score Difficulty_Modifier AmbientH_Difficulty matches 1 run function ambient_hazards:timer2
execute if score Difficulty_Modifier AmbientH_Difficulty matches 2 run function ambient_hazards:timer3
execute if score Difficulty_Modifier AmbientH_Difficulty matches 3 run function ambient_hazards:timer4

## --------
tellraw @a {"text":"Ambient Hazards - Loaded","color": "#32bf80"}