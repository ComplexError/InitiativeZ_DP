## Ailments

## ---- Dehydration ----

## Dialogue

## -- Effects --
execute as @a[scores={AmbientH_Hydration=..0}] run effect give @s nausea 2 0 true

## ---- Heat ----

## Dialogue
function ambient_hazards:dialogue/heat_dialogue

## -- Effects --

## Tier 1
execute as @a[scores={AmbientH_Scale=300..499}] run effect give @s slowness 3 0 true

## Tier 2
execute as @a[scores={AmbientH_Scale=500..799}] run effect give @s slowness 3 0 true
execute as @a[scores={AmbientH_Scale=500..799}] run effect give @s hunger 3 2 true

## Tier 3
execute as @a[scores={AmbientH_Scale=800..}] run effect give @s slowness 3 1 true
execute as @a[scores={AmbientH_Scale=800..}] run effect give @s nausea 3 3 true

## Tier 3
execute as @a[scores={AmbientH_Scale=900..}] run effect give @s darkness 5 0 true

## - Sweat Drops -
execute as @a[scores={AmbientH_Scale=100..799}] at @s run particle falling_water ~ ~1.4 ~ 0.2 0.2 0.2 0 1 force
execute as @a[scores={AmbientH_Scale=100..799}] at @s run particle falling_water ~ ~1 ~ 0.2 0.2 0.2 0 1 force

execute as @a[scores={AmbientH_Scale=300..729}] at @s run particle falling_water ~ ~1.6 ~ 0.15 0.15 0.15 0 1 force
execute as @a[scores={AmbientH_Scale=300..729}] at @s run particle falling_water ~ ~0.9 ~ 0.15 0.15 0.15 0 3 force

execute as @a[scores={AmbientH_Scale=500..729}] at @s run particle falling_water ~ ~1.2 ~ 0.17 0.17 0.17 0 2 force
execute as @a[scores={AmbientH_Scale=500..729}] at @s run particle falling_water ~ ~0.7 ~ 0.17 0.17 0.17 0 2 force

## ---- Cold ----

## Dialogue
function ambient_hazards:dialogue/cold_dialogue

## -- Effects --

## Tier 1
execute as @a[scores={AmbientH_Scale=-499..-300}] run effect give @s slowness 3 0 true

## Tier 2
execute as @a[scores={AmbientH_Scale=-799..-500}] run effect give @s slowness 3 1 true
execute as @a[scores={AmbientH_Scale=-799..-500}] run effect give @s hunger 3 2 true

## Tier 3
execute as @a[scores={AmbientH_Scale=-900..-800}] run effect give @s slowness 3 1 true

## Tier 3
execute as @a[scores={AmbientH_Scale=..-900}] run effect give @s slowness 3 0 true
execute as @a[scores={AmbientH_Scale=..-900}] run effect give @s blindness 3 0 true