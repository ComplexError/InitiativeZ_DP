## ---- Coast Cottage ----

## - Pier (Mil2 - Hidden) -
setblock 260 30 3628 air
execute positioned 260 30 3628 run kill @e[type=item,distance=..1]
setblock 260 30 3628 chest[facing=north,waterlogged=true]{LootTable:"loot:chests/mil2"} replace

## - Cottage 1st Floor (Food1) -
setblock 253 41 3651 air
execute positioned 253 41 3651 run kill @e[type=item,distance=..1]
setblock 253 41 3651 chest[facing=west]{LootTable:"loot:chests/food1"} replace

## - Cottage 2nd Floor (Civ1) -
setblock 250 45 3646 air
execute positioned 250 45 3646 run kill @e[type=item,distance=..1]
setblock 250 45 3646 chest[facing=south]{LootTable:"loot:chests/civ1"} replace