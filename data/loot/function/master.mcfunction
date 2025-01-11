## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add Loot_Drunkness dummy
scoreboard objectives add Loot_Sugar dummy

## -- Mechanic Cooldowns --

## ---- Master Panel ----
function loot:5timer
function loot:30timer

tellraw @a { "color": "#02d1af", "text": "- InitiativeZ: Items & Loot - Active"}