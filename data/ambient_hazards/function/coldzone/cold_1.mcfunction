## ---- Chills players in cold biomes ----
execute as @s[scores={AmbientH_Scale=..0}] run scoreboard players remove @s AmbientH_Scale 4
execute as @s[scores={AmbientH_Scale=0..}] run scoreboard players remove @s AmbientH_Scale 8
execute as @s if predicate ambient_hazards:nighttime unless biome ~ ~ ~ desert run scoreboard players remove @s AmbientH_Scale 4
execute as @s if predicate ambient_hazards:nighttime if predicate ambient_hazards:visible_sky unless biome ~ ~ ~ desert run scoreboard players remove @s AmbientH_Scale 8

## -- Hypothermia --
execute at @s as @s if predicate ambient_hazards:is_raining if predicate ambient_hazards:visible_sky run scoreboard players remove @s AmbientH_Scale 2
execute at @s as @s if predicate ambient_hazards:thunder if predicate ambient_hazards:visible_sky run scoreboard players remove @s AmbientH_Scale 4

## -- Breathing Particles (sprinting only) --
execute as @s at @s[predicate=ambient_hazards:high_altitude,predicate=master:is_sprinting,predicate=!master:is_sneaking] positioned ~ ~1.5 ~ run particle dust{color:[1.000,1.000,1.000],scale:1} ^0.2 ^ ^ 0.1 0.1 0.1 0 2 force
execute as @s at @s[predicate=ambient_hazards:high_altitude,predicate=master:is_sprinting,predicate=!master:is_sneaking] positioned ~ ~1.5 ~ run particle dust{color:[1.000,1.000,1.000],scale:1} ^-0.2 ^ ^ 0.1 0.1 0.1 0 2 force
execute as @s at @s[predicate=ambient_hazards:high_altitude,predicate=master:is_sprinting,predicate=!master:is_sneaking] positioned ~ ~1.5 ~ run particle dust{color:[1.000,1.000,1.000],scale:1.5} ^0.2 ^ ^ 0.1 0.1 0.1 1 2 force
execute as @s at @s[predicate=ambient_hazards:high_altitude,predicate=master:is_sprinting,predicate=!master:is_sneaking] positioned ~ ~1.5 ~ run particle dust{color:[1.000,1.000,1.000],scale:1.5} ^-0.2 ^ ^ 0.1 0.1 0.1 1 2 force

execute as @s at @s[predicate=ambient_hazards:high_altitude,predicate=master:is_sprinting,predicate=!master:is_sneaking] positioned ~ ~1.5 ~ run particle dust{color:[1.000,1.000,1.000],scale:1} ^ ^ ^ 0.1 0.1 0.1 2 4 force

## --- Decrease Chilling ---

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

## --- Increase Chilling ---

## Diamond Armor (-2)
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] run scoreboard players remove @s AmbientH_Scale 0
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] run scoreboard players remove @s AmbientH_Scale 1 
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] run scoreboard players remove @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] run scoreboard players remove @s AmbientH_Scale 0

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