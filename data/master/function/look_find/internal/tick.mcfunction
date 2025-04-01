effect clear @e glowing
execute as @a at @s run tag @e[type=player,distance=..4] add find_looking.candidate
execute as @a at @s run tag @e[type=#entities:corpse,distance=..4] add find_looking.candidate
execute as @a at @s run function master:look_find/find
tag @e remove find_looking.candidate