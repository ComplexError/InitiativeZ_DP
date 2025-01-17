## ---- Coast Cottage ----

## - Sea Cave 1st (Mil1) -
setblock 534 31 3758 air
execute positioned 534 31 3758 run kill @e[type=item,distance=..1]
setblock 534 31 3758 chest[facing=south,waterlogged=true]{LootTable:"loot:chests/mil1"} replace

## - Sea Cave 2nd (Civ1) -
setblock 531 32 3759 air
execute positioned 531 32 3759 run kill @e[type=item,distance=..1]
setblock 531 32 3759 chest[facing=east,waterlogged=true]{LootTable:"loot:chests/civ1"} replace

## - Tower base - interior (Tool1) -
setblock 530 39 3756 air
execute positioned 530 39 3756 run kill @e[type=item,distance=..1]
setblock 530 39 3756 chest[facing=south]{LootTable:"loot:chests/civ1"} replace