## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add TownID dummy
scoreboard objectives add CityID dummy
scoreboard objectives add PoiID dummy
scoreboard objectives add DungeonID dummy

scoreboard objectives add Loot_Proximity dummy

scoreboard objectives add GlobalTips dummy
scoreboard players set System GlobalTips 0

## -- Mechanic Cooldowns --
scoreboard objectives add Location_Cooldown dummy

## ---- Master Panel ----

tellraw @a { "color": "#c4aa02", "text": "- InitiativeZ: Towns & Cities - Active"}