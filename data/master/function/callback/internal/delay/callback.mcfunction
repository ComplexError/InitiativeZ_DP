execute store result storage callback filter.time int 1 run scoreboard players get .time callback
data modify storage callback jobs set value []
function master:callback/internal/delay/cut_tasks with storage callback filter

execute store result score .jobs callback run data get storage callback jobs
#execute if score .jobs callback matches 0 run say ERROR, NO JOBS
execute if score .jobs callback matches 1.. run function master:callback/internal/delay/loop_jobs

tp 00000063-0000-0077-0000-006300000062 0 0 0