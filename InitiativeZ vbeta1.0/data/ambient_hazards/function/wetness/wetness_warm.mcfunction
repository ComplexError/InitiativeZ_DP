## --- In water ---
execute as @s[scores={AmbientH_Wetness=..5000}] at @s if block ~ ~ ~ water unless predicate ambient_hazards:inboat run scoreboard players set @s AmbientH_Wetness 5000
execute as @s[scores={AmbientH_Wetness=..10000}] at @s if block ~ ~1 ~ water unless predicate ambient_hazards:inboat run scoreboard players set @s AmbientH_Wetness 10000

## --- Remove 1% ---
execute as @s if entity @s[scores={AmbientH_Wetness=..0}] run return 0
scoreboard players remove @s AmbientH_Wetness 100

## --- Armor ---

## Leather Armor (+37)
execute as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Wetness 10
execute as @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Wetness 14
execute as @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Wetness 8
execute as @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Wetness 5

## Netherite Armor (-10)
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 2
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 2

## Iron Armor (-12)
execute as @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 3

## Gold Armor (-14)
execute as @s[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 4 
execute as @s[nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 4
execute as @s[nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 3

## Diamond Armor (-12)
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Wetness 3
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Wetness 3