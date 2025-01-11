## ---- Players tick ----
execute as @a run function players:healkit_ui/player/tick
execute as @e[type=chest_minecart,tag=ui] run function players:healkit_ui/minecart/tick