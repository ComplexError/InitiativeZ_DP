# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.

## ---- System Architecture ----

## -- Essential Features --
gamerule doMobSpawning true
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule keepInventory true
gamerule naturalRegeneration false

time set day
#time set 12500

## -- Mechanic Cooldowns --
scoreboard objectives add Master_Death deathCount
scoreboard objectives add Master_ZombieKills dummy
scoreboard objectives add Master_Rewards dummy
scoreboard objectives add Master_RNG dummy
scoreboard objectives add Master_Looktarget dummy

scoreboard objectives add entity.posx1 dummy
scoreboard objectives add entity.posy1 dummy
scoreboard objectives add entity.posz1 dummy

scoreboard objectives add entity.posz2 dummy
scoreboard objectives add entity.posy2 dummy
scoreboard objectives add entity.posx2 dummy

scoreboard objectives add entity.sx dummy
scoreboard objectives add entity.sz dummy
scoreboard objectives add entity.speed dummy

scoreboard objectives add generic.const dummy
scoreboard players set .temp generic.const -1

team add Players
team modify Players friendlyFire false

## ---- Master Panel ----
schedule function master:callback/internal/load 10t
schedule function master:look_find/internal/load 10t
schedule function ambient_hazards:master 1s
schedule function players:master 2s
schedule function dungeons:master 3s
schedule function locations:master 4s
schedule function entities:master 5s
schedule function loot:master 6s

schedule function master:timers/twotick 8s
schedule function master:timers/fourtick 8s
schedule function master:timers/fivetick 8s
schedule function master:timers/1timer 8s
schedule function master:timers/2timer 10s
schedule function master:timers/5timer 8s
schedule function master:timers/6timer 8s
schedule function master:timers/10timer 8s
schedule function master:timers/20timer 8s
schedule function master:timers/30timer 8s
schedule function master:timers/60timer 8s
schedule function master:timers/120timer 16s
schedule function master:timers/240timer 8s

tellraw @a { "color": "#3d8c00", "bold": true, "text": "{ InitiativeZ: Master - Active }"}
