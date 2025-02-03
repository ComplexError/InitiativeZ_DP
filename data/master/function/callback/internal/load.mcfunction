function master:callback/internal/gu/load
scoreboard objectives add callback dummy

## --- Zero the schedualer and clear tasks ---
scoreboard players set .time callback 0
data remove storage callback tasks
schedule clear master:callback/internal/callback/start

execute unless entity 00000063-0000-0077-0000-006300000062 in minecraft:overworld run function master:callback/internal/load_once

tellraw @a { "color": "gold", "text": "- InitiativeZ: Callback - Active"}