## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add Player_Bleeding dummy
scoreboard objectives add Player_Infected dummy

## -- Mechanic Cooldowns --

## ---- Master Panel ----
function players:30timer

tellraw @a { "color": "white", "text": "- InitiativeZ: Player Features - Active"}