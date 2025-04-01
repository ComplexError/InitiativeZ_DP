## ---- System Architecture ----

## -- Essential Features --
scoreboard objectives add Entities_Bleeding dummy
scoreboard objectives add Entities_Infected dummy

## - Number generator -
scoreboard objectives add entity.n1 dummy
scoreboard objectives add entity.n2 dummy
scoreboard objectives add entity.n3 dummy
scoreboard objectives add entity.n4 dummy
scoreboard objectives add entity.n5 dummy
scoreboard objectives add entity.random dummy

execute unless score $generator entity.n1 matches 0.. run scoreboard players set $generator entity.n1 1430920
scoreboard players set $generator entity.n2 16383
scoreboard players set $generator entity.n3 131071
scoreboard players set $generator entity.n4 21

scoreboard objectives add entity.specialCD dummy

## -- Mechanic Cooldowns --

## ---- Master Panel ----

tellraw @a { "color": "#8c1212", "text": "- InitiativeZ: Monsters & Bosses - Active"}