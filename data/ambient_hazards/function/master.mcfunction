## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add AmbientH_Scale dummy
scoreboard objectives add AmbientH_Wetness dummy
scoreboard objectives add AmbientH_Dialogue dummy
scoreboard objectives add AmbientH_Hydration dummy
scoreboard objectives add AmbientH_Death deathCount

## -- Mechanic Cooldowns --
scoreboard objectives add AmbientH_DrinkWater dummy
scoreboard objectives add AmbientH_DrinkNog dummy
scoreboard objectives add AmbientH_DrinkTea dummy

## ---- Master Panel ----
function ambient_hazards:stop
function ambient_hazards:integrate_players
function ambient_hazards:hydration/hydration_timer

function ambient_hazards:timer
function ambient_hazards:10timer

tellraw @a { "color": "#0065ad", "text": "- InitiativeZ: Ambient Hazards - Active"}