## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add TownID dummy
scoreboard objectives add CityID dummy
scoreboard objectives add DungeonID dummy

scoreboard objectives add GlobalTips dummy
scoreboard players set System GlobalTips 0

## -- Mechanic Cooldowns --
scoreboard objectives add Location_Cooldown dummy

## ---- Master Panel ----
schedule function locations:tiprefill_timer 10s
function locations:2s_timer

tellraw @a { "color": "#c4aa02", "text": "- InitiativeZ: Towns & Cities - Active"}