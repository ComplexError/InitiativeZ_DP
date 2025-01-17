## ---- Title ----
execute as @s unless score @s TownID matches 6 run title @s title {"bold":true,"color":"#0DC6FF","text":"Macosteul"}
execute as @s at @s unless score @s TownID matches 6 run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.5 1 0.5

## -- Set ID and cooldown --
execute as @s run scoreboard players set @s TownID 6
execute as @s run scoreboard players set @s Location_Cooldown 60