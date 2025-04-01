## ---- Save items to storage and remove from world ----
execute align xyz as @s run data modify storage players:zombie Inventory insert 0 from entity @s Inventory[]

## --- Summon the zombie to replace dead player ---
execute at @s align xyz run summon zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,Tags:["PlayerZombie"],Passengers:[{id:"minecraft:marker",Tags:["DeadInventory"]}]}
scoreboard players set @n[tag=PlayerZombie] entity.random 10
data modify entity @n[tag=PlayerZombie] ArmorItems[0] set from storage players:zombie Inventory[{Slot:100b}]
data modify entity @n[tag=PlayerZombie] ArmorItems[1] set from storage players:zombie Inventory[{Slot:101b}]
data modify entity @n[tag=PlayerZombie] ArmorItems[2] set from storage players:zombie Inventory[{Slot:102b}]
execute as @s run loot replace entity @n[tag=PlayerZombie] armor.head loot loot:items/player_head

data modify entity @n[tag=PlayerZombie] HandItems[0] set from storage players:zombie Inventory[{Slot:0b}]
data modify entity @n[tag=PlayerZombie] HandItems[1] set from storage players:zombie Inventory[{Slot:-106b}]

## - Copy loot to marker riding zombie -
data modify entity @n[tag=DeadInventory] data.inventory set from storage players:zombie Inventory
data remove storage players:zombie Inventory