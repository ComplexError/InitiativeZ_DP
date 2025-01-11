## --- Resets Player after death --
scoreboard players set @s Loot_Drunkness 0
scoreboard players reset @s Entities_Bleeding
advancement revoke @s only players:bleed
scoreboard players reset @s Entities_Infected
advancement revoke @s only players:infect