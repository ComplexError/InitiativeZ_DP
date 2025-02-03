data modify entity 00000063-0000-0077-0000-006300000062 Pos set from storage callback jobs[0].Pos

execute store result score .entities callback run data get storage callback jobs[0].entities
#execute if score .entities callback matches 0 run say ERROR, JOB HAS NO ENTITIES! THIS IS REDUNDANT
data modify storage callback args.selector set from storage callback jobs[0].selector
data modify storage callback args.cmd set from storage callback jobs[0].command
execute at 00000063-0000-0077-0000-006300000062 run function master:callback/internal/delay/run_cmd with storage callback args

data remove storage callback jobs[0]
scoreboard players remove .jobs callback 1
execute if score .jobs callback matches 1.. run function master:callback/internal/delay/loop_jobs