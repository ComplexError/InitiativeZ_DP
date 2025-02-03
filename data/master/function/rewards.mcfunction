## ---- Master Rewards Distribution ----

## --- Zombie Kills ---
#execute as @s[scores={Master_Rewards=0,Master_ZombieKills=1..}] run function loot:items/keys/irondoor_key
#execute as @s[scores={Master_Rewards=0,Master_ZombieKills=1..}] run scoreboard players add @s Master_Rewards 1

#execute as @s[scores={Master_Rewards=1,Master_ZombieKills=5..}] run function loot:items/keys/irondoor_key
#execute as @s[scores={Master_Rewards=1,Master_ZombieKills=5..}] run scoreboard players add @s Master_Rewards 1

#execute as @s[scores={Master_Rewards=2,Master_ZombieKills=15..}] run function loot:items/keys/irondoor_key
#execute as @s[scores={Master_Rewards=2,Master_ZombieKills=15..}] run scoreboard players add @s Master_Rewards 1