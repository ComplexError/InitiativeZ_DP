data modify storage callback args.UUID set from storage callback jobs[0].entities[0]
data modify storage callback args.cmd set from storage callback jobs[0].command
function master:callback/internal/schedule/run_cmd with storage callback args

data remove storage callback jobs[0].entities[0]
scoreboard players remove .entities callback 1
execute if score .entities callback matches 1.. run function master:callback/internal/schedule/loop_entities