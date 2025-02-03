## -- Infected Effects --
execute as @s[scores={Player_Infected=1..3}] run damage @s 4 generic
execute as @s[scores={Player_Infected=4..7}] run damage @s 6 generic
execute as @s[scores={Player_Infected=8..}] run damage @s 8 generic
execute as @s[scores={Player_Infected=1..}] run effect give @s nausea 10 1 true
execute as @s[scores={Player_Infected=4..}] run effect give @s weakness 4 0 true
execute as @s[scores={Player_Infected=1..}] run playsound minecraft:entity.zombie.death ambient @s ~ ~ ~ 1 0.7 1
execute as @s[scores={Player_Infected=1..7}] run scoreboard players add @s Player_Infected 1

execute as @s[scores={Player_Infected=1..}] run function master:callback/schedule {ticks:600,selector:"@s",command:"function players:mechanics/infected/plague_effect"}

## -- Infected Dialogue --
execute as @s[scores={Player_Infected=1..3}] at @s run tellraw @s {"text":"I don't feel so good...","color":"green","italic": true}
execute as @s[scores={Player_Infected=4..7}] at @s run tellraw @s {"text":"I need to get treated...","color":"green","italic": true}
execute as @s[scores={Player_Infected=8..}] at @s run tellraw @s {"text":"I'm not going to make it at this rate...","color":"green","italic": true}
