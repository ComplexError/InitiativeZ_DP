data modify storage callback entities set value []
$execute as $(selector) run function master:callback/internal/gu/generate_id_list
$schedule function master:callback/internal/schedule/callback $(ticks)t append
$data modify storage callback in set value {ticks:$(ticks),command:"$(command)"}
function master:callback/internal/schedule/start