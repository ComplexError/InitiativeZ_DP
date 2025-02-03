schedule function master:timers/twotick 2t

## -- Death --
execute as @a[scores={Master_Death=1..}] run function master:death/death

## -- PvE Team --
#team join Players @a

## --- Look Target ---

## - Initialize -
execute as @a unless entity @s[scores={Master_Looktarget=0..}] run scoreboard players set @s Master_Looktarget 0

## -- Reset --
execute as @a[scores={Master_Looktarget=1..}] run scoreboard players remove @s Master_Looktarget 1

## --- RNG ---

## - Initialize -
execute as @a unless entity @s[scores={Master_RNG=0..}] run scoreboard players add @s Master_RNG 0

## -- Trigger and Reset --
execute as @a[scores={Master_RNG=-10..}] run scoreboard players add @s Master_RNG 1
execute as @a[scores={Master_RNG=0..}] if score @s Master_RNG matches 20 run scoreboard players set @s Master_RNG 0
## --- Rewards ---

## - Initalize -
execute as @a unless entity @s[scores={Master_Rewards=0..}] run scoreboard players add @s Master_Rewards 0
execute as @a unless entity @s[scores={Master_RNG=0..}] run scoreboard players add @s Master_RNG 0

## -- Zombie Kills --
execute as @a[scores={Master_ZombieKills=1..4}] at @s run function master:rewards
execute as @a[scores={Master_ZombieKills=5..14}] at @s run function master:rewards
execute as @a[scores={Master_ZombieKills=15..19}] at @s run function master:rewards
