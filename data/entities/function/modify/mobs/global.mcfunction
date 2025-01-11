## ---- Mob type detection ----

## -- Skeleton --
#execute as @s[type=minecraft:skeleton,tag=!entity.parsed] run function entities:modify/mobs/skeletons/all_of

## -- Stray --
#execute as @s[type=minecraft:stray,tag=!entity.parsed] run function entities:modify/mobs/stray/all_of

## -- Wither Skeleton --
#execute as @s[type=minecraft:wither_skeleton,tag=!entity.parsed] run function entities:modify/mobs/wither_skeleton/all_of

## -- Husk --
#execute as @s[type=minecraft:husk,tag=!entity.parsed] run function entities:modify/mobs/husk/all_of

## -- Zombie --
execute as @s[type=minecraft:zombie,tag=!entity.parsed] run function entities:modify/mobs/zombies/all_of

## -- Drowned --
#execute as @s[type=minecraft:drowned,tag=!entity.parsed] run function entities:modify/mobs/drowned/all_of

## -- Zombie Villager --
#execute as @s[type=minecraft:zombie_villager,tag=!entity.parsed] run function entities:modify/mobs/zombie_villagers/all_of

## -- Zombie Piglin --
#execute as @s[type=minecraft:zombified_piglin,tag=!entity.parsed] run function entities:modify/mobs/zombified_piglin/all_of

# Finalize for head drops, (I might want this)
#execute if score $head_drops ts.mm.settings matches 1..2 as @s[tag=ts.mm.custom_head] run data merge entity @s {ArmorDropChances:[0.085F,0.085F,0.085F,0.030F]}
#execute if score $head_drops ts.mm.settings matches -1..0 as @s[tag=ts.mm.custom_head] run data merge entity @s {ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F]}
