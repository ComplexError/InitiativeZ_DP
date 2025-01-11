
## -- Drunkness Reduction --
execute as @a[scores={Loot_Drunkness=1..}] at @s run function loot:items/drinks/reset_beer

## -- Bleeding --
execute as @a unless entity @s[scores={Entities_Bleeding=1..}] run scoreboard players set @s Entities_Bleeding 0
execute as @a[scores={Entities_Bleeding=1}] at @s run function entities:mechanics/bleeding/bleeding_effect

## -- Infected --
execute as @a unless entity @s[scores={Entities_Infected=1..}] run scoreboard players set @s Entities_Infected 0
execute as @a[scores={Entities_Infected=1}] at @s run function entities:mechanics/infected/plague_effect