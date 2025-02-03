## ---- Datapack Tick Control ----
clear @a minecraft:barrier
function players:tick
function entities:tick
function master:callback/internal/tick
function master:look_find/internal/tick

#execute as @e[type=minecraft:arrow] at @s run data modify entity @s damage set value 0.0
#execute as @e[type=minecraft:arrow] at @s if entity @p[limit=1,distance=..0.25] run effect give @p minecraft:instant_health 1 1 true
#execute as @e[type=minecraft:arrow] at @s if entity @p[limit=1,distance=..0.25] run kill @s