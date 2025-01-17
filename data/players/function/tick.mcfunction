## ---- Players tick ----
execute as @a run function players:healkit_ui/player/tick
execute as @a run clear @s minecraft:glass_bottle[minecraft:custom_data="{itemTrash:true}"]
execute as @e[type=chest_minecart,tag=ui] run function players:healkit_ui/minecart/tick