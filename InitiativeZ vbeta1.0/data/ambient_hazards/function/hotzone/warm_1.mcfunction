## ---- Heats player in warm biomes ----
execute as @s[scores={AmbientH_Scale=0..}] run scoreboard players add @s AmbientH_Scale 4
execute as @s[scores={AmbientH_Scale=..0}] run scoreboard players add @s AmbientH_Scale 8

## --- Decerase Heating ---

## Water
execute as @s if block ~ ~ ~ water run scoreboard players remove @s AmbientH_Scale 10
execute as @s[scores={AmbientH_Scale=1000..}] if block ~ ~ ~ water run scoreboard players remove @s AmbientH_Scale 20

## --- Increase Heating ---

## Turtle shell (+1)
execute as @s[nbt={Inventory:[{id:"minecraft:turtle_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1

## Chain Armor (+2)
execute as @s[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 0
execute as @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 1 
execute as @s[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:chainmail_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 0

## Leahter Armor (+4)
execute as @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## diamond (+4)
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## gold (+6)
execute as @s[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## iron (+6)
execute as @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 1
execute as @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 1

## netherite (+8)
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_leggings",Slot:101b}]}] run scoreboard players add @s AmbientH_Scale 2
execute as @s[nbt={Inventory:[{id:"minecraft:netherite_boots",Slot:100b}]}] run scoreboard players add @s AmbientH_Scale 2