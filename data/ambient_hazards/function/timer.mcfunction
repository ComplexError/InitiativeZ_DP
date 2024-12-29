schedule function ambient_hazards:timer 1s
function ambient_hazards:effects/ailments
function ambient_hazards:effects/illness1

## -- Death --

execute as @a[scores={AmbientH_Death=1..}] run function ambient_hazards:effects/death

## ---- Hot & Cold ----

## -- Wetness Checker --

execute as @a[predicate=!ambient_hazards:underground] at @s unless biome ~ ~ ~ #ambient_hazards:is_warm run function ambient_hazards:wetness/wetness_cool
execute as @a[predicate=!ambient_hazards:underground] at @s if biome ~ ~ ~ #ambient_hazards:is_warm run function ambient_hazards:wetness/wetness_warm
execute as @a[predicate=ambient_hazards:underground] run function ambient_hazards:wetness/wetness_underground

## -- Wetness -- 
execute as @a[scores={AmbientH_Wetness=1..}] at @s run function ambient_hazards:wetness/wet

## --- Biome Checker ---

## -- Cold --
execute as @a[scores={AmbientH_Scale=-1200..}] at @s if biome ~ ~ ~ #ambient_hazards:is_cold unless predicate ambient_hazards:underground run function ambient_hazards:coldzone/cold_1

## - Fireplace -

## - Heats Player -
execute as @a[scores={AmbientH_Scale=..0}] run function ambient_hazards:fireplace/heatsource_warming
execute as @a[scores={AmbientH_Scale=0..}] run function ambient_hazards:fireplace/heatsource_harming

## -- Warm --
execute as @a[scores={AmbientH_Scale=..1200}] at @s if biome ~ ~ ~ #ambient_hazards:is_warm unless predicate ambient_hazards:underground unless biome ~ ~ ~ desert run function ambient_hazards:hotzone/warm_1

## - Fireplace -

## - Cools Player -
execute as @a[scores={AmbientH_Scale=0..}] run function ambient_hazards:fireplace/coldsource_cooling
execute as @a[scores={AmbientH_Scale=..0}] run function ambient_hazards:fireplace/coldsource_chilling

## -- Burning Players --
execute as @a if predicate ambient_hazards:on_fire run scoreboard players add @s AmbientH_Scale 100
execute as @a at @s if block ~ ~-0.25 ~ minecraft:campfire[lit=true] run scoreboard players add @s AmbientH_Scale 100
execute as @a at @s if block ~ ~-1 ~ red_sand run function ambient_hazards:hotzone/hotsands

## -- Desert --
execute as @a[scores={AmbientH_Scale=..1200}] at @s if biome ~ ~ ~ desert unless predicate ambient_hazards:underground run function ambient_hazards:desert/desert_1

## -- Stable Surface --
execute as @a[scores={AmbientH_Scale=-1200..1200}] at @s unless biome ~ ~ ~ #ambient_hazards:is_warm unless biome ~ ~ ~ #ambient_hazards:is_cold run function ambient_hazards:normal/normal_1
## -- Stable Underground --
execute as @a at @s unless biome ~ ~ ~ #ambient_hazards:is_cold unless biome ~ ~ ~ #ambient_hazards:is_warm unless dimension the_nether run function ambient_hazards:normal/normal_1
execute as @a[scores={AmbientH_Scale=-1200..}] at @s if biome ~ ~ ~ #ambient_hazards:is_cold if predicate ambient_hazards:underground run function ambient_hazards:normal/normal_1
execute as @a[scores={AmbientH_Scale=..1200}] at @s if biome ~ ~ ~ #ambient_hazards:is_warm if predicate ambient_hazards:underground run function ambient_hazards:normal/normal_1
## -- Flux Underground --
execute as @a[scores={AmbientH_Scale=-100..0}] at @s if biome ~ ~ ~ #ambient_hazards:is_cold if predicate ambient_hazards:underground run scoreboard players remove @s AmbientH_Scale 5
execute as @a[scores={AmbientH_Scale=0..100}] at @s if biome ~ ~ ~ #ambient_hazards:is_warm if predicate ambient_hazards:underground run scoreboard players add @s AmbientH_Scale 5

## --- Drinks ---

## - Drink Water -
execute as @a[scores={AmbientH_DrinkWater=1..}] at @s run scoreboard players remove @s AmbientH_DrinkWater 1

## -- Create Tea --
execute as @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] at @s if block ~ ~-0.2 ~ minecraft:campfire[lit=true] if entity @e[type=item,distance=..1,limit=5,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",count:5}}] run function ambient_hazards:items/drinks/craft_tea

## - Drink Tea -
execute as @a[scores={AmbientH_DrinkTea=1..}] at @s run function ambient_hazards:items/drinks/reset_tea

## -- Create Nog --
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",count:1}}] at @s if block ~ ~-0.2 ~ minecraft:campfire[lit=true] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:egg",count:1}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:milk_bucket",count:1}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sugar",count:1}}] run function ambient_hazards:items/drinks/craft_nog

## - Drink Nog -
execute as @a[scores={AmbientH_DrinkNog=1..}] at @s run function ambient_hazards:items/drinks/reset_nog

## -- Nether --
execute as @a[scores={AmbientH_Scale=..1200}] at @s if dimension the_nether run function ambient_hazards:hotzone/warm_nether1

## No effects on creative player.
execute as @a[gamemode=!adventure] run scoreboard players set @s AmbientH_Scale 0
execute as @a[gamemode=!adventure] run scoreboard players set @s AmbientH_Dialogue 0
execute as @a[gamemode=!adventure] run scoreboard players set @s AmbientH_Wetness 0

## keep the scores inside the boundries.
execute as @a[scores={AmbientH_Scale=1200..}] run scoreboard players set @s AmbientH_Scale 1200
execute as @a[scores={AmbientH_Scale=..-1200}] run scoreboard players set @s AmbientH_Scale -1200