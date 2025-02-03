$schedule function master:callback/internal/delay/callback $(ticks)t append
$data modify storage callback in set value {ticks:$(ticks),selector:"$(selector)",command:"$(command)"}
function master:callback/internal/delay/start