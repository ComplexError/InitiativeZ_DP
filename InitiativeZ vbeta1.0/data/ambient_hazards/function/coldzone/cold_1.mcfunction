## ---- Chills players in cold biomes ----
execute as @s[scores={AmbientH_Scale=..0}] run scoreboard players remove @s AmbientH_Scale 4
execute as @s[scores={AmbientH_Scale=0..}] run scoreboard players remove @s AmbientH_Scale 8

## -- Hypothermia --
execute at @s as @s if predicate ambient_hazards:is_raining unless function ambient_hazards:inside run scoreboard players remove @s AmbientH_Scale 2
execute at @s as @s if predicate ambient_hazards:thunder unless function ambient_hazards:inside run scoreboard players remove @s AmbientH_Scale 4

## --- Decrease Cooling ---

## Torch (+1)
execute as @s[nbt={SelectedItem:{id:"minecraft:torch"}}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run scoreboard players add @s AmbientH_Scale 1

## Leather Armor (+4)
execute as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## Netherite Armor (+5) 
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## --- Increase Cooling ---

## Diambient_hazardsond Armor (-2)
execute as @s[nbt={Inventory:[{id:"minecraft:diambient_hazardsond_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Scale 0
execute as @s[nbt={Inventory:[{id:"minecraft:diambient_hazardsond_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Scale 1 
execute as @s[nbt={Inventory:[{id:"minecraft:diambient_hazardsond_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:diambient_hazardsond_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Scale 0

## Gold Armor (-4)
execute as @s[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Scale 1

## Iron Armor (-4)
execute as @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Scale 1