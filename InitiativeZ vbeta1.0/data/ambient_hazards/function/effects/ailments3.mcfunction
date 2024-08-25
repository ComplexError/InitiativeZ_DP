## Ailments

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