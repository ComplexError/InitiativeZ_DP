## ---- Inititalize Players ----
execute as @a unless entity @s[scores={Location_Cooldown=0..}] run scoreboard players set @s Location_Cooldown 0
execute as @a unless entity @s[scores={TownID=0..}] run scoreboard players set @s TownID 0
execute as @a unless entity @s[scores={CityID=0..}] run scoreboard players set @s CityID 0
execute as @a unless entity @s[scores={PoiID=0..}] run scoreboard players set @s PoiID 0

execute as @a unless entity @s[scores={Loot_Proximity=0..}] run scoreboard players set @s Loot_Proximity 0

## ---- Locations ----
execute as @a[scores={TownID=0..}] at @s run function locations:towns/town_check
execute as @a[scores={CityID=0..}] at @s run function locations:cities/city_check
execute as @a[scores={PoiID=0..}] at @s run function locations:poi/poi_check

## --- Wilderness Reset ---
execute as @a[scores={Location_Cooldown=1..,TownID=0..,CityID=0..,PoiID=0..}] run scoreboard players remove @s Location_Cooldown 1
execute as @a[scores={TownID=1..}] if score @s Location_Cooldown matches 0 run scoreboard players set @s TownID 0
execute as @a[scores={CityID=1..}] if score @s Location_Cooldown matches 0 run scoreboard players set @s CityID 0
execute as @a[scores={PoiID=1..}] if score @s Location_Cooldown matches 0 run scoreboard players set @s PoiID 0

execute as @a[scores={Loot_Proximity=1..,TownID=0..,CityID=0..,PoiID=0..}] run scoreboard players remove @s Loot_Proximity 1
