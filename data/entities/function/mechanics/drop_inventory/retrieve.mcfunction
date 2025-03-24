advancement revoke @s only entities:kill_player_zombie

execute at @n[type=marker,tag=DeadInventory] as @n[tag=DeadInventory] run function entities:mechanics/drop_inventory/spawn_contents