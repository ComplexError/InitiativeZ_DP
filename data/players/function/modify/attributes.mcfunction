## ---- Assign number & tags ----

## -- Number generator --
execute as @s run function players:modify/generate_number

## -- Mob detection (head armor slot available) --
execute as @s[scores={player.random=0..}] run function players:modify/variation/all_of

## -- Tag for loop break --
scoreboard players reset @s Randomize
tag @s[scores={player.random=0..}] add player.modded