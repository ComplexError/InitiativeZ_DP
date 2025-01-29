## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add Player_Bleeding dummy
scoreboard objectives add Player_Infected dummy
scoreboard objectives add Player_BandageCD dummy
scoreboard objectives add player.random dummy
scoreboard objectives add Randomize trigger

scoreboard objectives add ui dummy
scoreboard objectives add ui.id dummy

## -- Mechanic Cooldowns --

## ---- Master Panel ----
setblock 0 -64 0 yellow_shulker_box

tellraw @a { "color": "white", "text": "- InitiativeZ: Player Features - Active"}