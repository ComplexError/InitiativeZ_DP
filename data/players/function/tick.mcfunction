## ---- Players tick ----
execute as @a run function players:healkit_ui/player/tick
execute as @a run function players:mechanics/movement/velocity
execute as @a run clear @s minecraft:glass_bottle[minecraft:custom_data="{itemTrash:true}"]
execute as @e[type=chest_minecart,tag=ui] run function players:healkit_ui/minecart/tick

execute as @e[type=minecraft:snowball] at @s unless block ^ ^-1 ^-1 minecraft:air run execute as @e[type=#entities:corpse,distance=..25] run function players:mechanics/stealth/snowball