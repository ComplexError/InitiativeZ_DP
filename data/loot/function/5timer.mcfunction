## --- Death ---
# Death now handled by master directory. Points to [function loot:death/reset]

## -- Craft Beer --
# TEMPORARY
execute as @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~-0.2 ~ minecraft:campfire[lit=true] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:pufferfish",count:1}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:poisonous_potato",count:1}}] run function loot:items/drinks/craft_beer
