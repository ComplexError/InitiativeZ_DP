execute as @s at @s if data entity @s data.inventory[-1].id run function entities:mechanics/drop_inventory/spawn_item

kill @s