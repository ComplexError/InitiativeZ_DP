## ---- Day or Night ----
execute as @s if predicate ambient_hazards:daytime run function ambient_hazards:hotzone/warm_1
execute as @s if predicate ambient_hazards:nighttime run function ambient_hazards:coldzone/cold_1