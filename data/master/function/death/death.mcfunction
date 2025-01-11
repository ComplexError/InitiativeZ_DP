## --- Resets Player Temp after death
scoreboard players reset @s Loot_Drunkness
scoreboard players reset @s Master_ZombieKills
scoreboard players reset @s Master_Rewards
execute as @s run function ambient_hazards:effects/death
execute as @s run function loot:death/reset
execute as @s run function players:mechanics/death
execute as @s run scoreboard players reset @s Master_Death