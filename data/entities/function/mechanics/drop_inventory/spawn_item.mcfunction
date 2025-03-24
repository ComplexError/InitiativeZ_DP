summon minecraft:item ~ ~-0.9 ~ {Item:{id:"minecraft:stick",count:1},Tags:["inventory","item","processing"],Motion:[0.0d,0.0d,0.0d]}
data modify entity @n[tag=inventory,tag=item,tag=processing] Item set from entity @s data.inventory[-1]
data remove entity @s data.inventory[-1]
data modify entity @n[tag=inventory,tag=item,tag=processing] Tags set value []
execute if data entity @s data.inventory[-1].id run function entities:mechanics/drop_inventory/spawn_item