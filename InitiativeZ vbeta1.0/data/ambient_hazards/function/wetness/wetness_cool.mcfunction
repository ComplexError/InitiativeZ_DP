## ---- In water ----
execute as @s[scores={AmbientH_Wetness=..5000}] at @s if block ~ ~ ~ water unless predicate ambient_hazards:inboat run scoreboard players set @s AmbientH_Wetness 5000
execute as @s[scores={AmbientH_Wetness=..10000}] at @s if block ~ ~1 ~ water unless predicate ambient_hazards:inboat run scoreboard players set @s AmbientH_Wetness 10000

## -- If raining --
execute at @s[predicate=!ambient_hazards:is_raining] run function ambient_hazards:wetness/wetness_warm
execute at @s[predicate=!ambient_hazards:is_raining] run return 0
execute as @s[scores={AmbientH_Wetness=0..}] at @s unless predicate ambient_hazards:visible_sky run scoreboard players remove @s AmbientH_Wetness 20
execute as @s[scores={AmbientH_Wetness=..0}] at @s unless predicate ambient_hazards:visible_sky run scoreboard players set @s AmbientH_Wetness 0
execute as @s at @s unless predicate ambient_hazards:visible_sky run return 0

## --- Add 1% ---
execute as @s if entity @s[scores={AmbientH_Wetness=10000..}] run return 0
scoreboard players add @s AmbientH_Wetness 100

## --- Armors ---

## Leather Armor (-51)
execute as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 10
execute as @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 20
execute as @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 10

## Netherite Armor (-53) 
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 20
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 11

## Iron Armor (-51)
execute as @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 10
execute as @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 20
execute as @s[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 10

## Gold Armor (-51)
execute as @s[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 10
execute as @s[nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 20 
execute as @s[nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 10

## Diamond Armor (-51)
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 10
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 20
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 11
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 10