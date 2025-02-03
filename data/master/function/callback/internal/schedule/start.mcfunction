# Get Location
tp 00000063-0000-0077-0000-006300000062 ~ ~ ~
data modify storage callback load.Pos set from entity 00000063-0000-0077-0000-006300000062 Pos
tp 00000063-0000-0077-0000-006300000062 0 0 0

# Get Time
scoreboard players operation #temp callback = .time callback
execute store result score #temp1 callback run data get storage callback in.ticks
execute store result storage callback load.time int 1 run scoreboard players operation #temp callback += #temp1 callback

# Load Task
data modify storage callback load.command set from storage callback in.command
data modify storage callback load.entities set from storage callback entities
data modify storage callback tasks append from storage callback load