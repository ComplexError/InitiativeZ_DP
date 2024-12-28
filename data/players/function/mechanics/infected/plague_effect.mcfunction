## -- Infected Effects --
execute as @s[scores={Player_Infected=1}] run damage @s 4 generic
execute as @s[scores={Player_Infected=1}] run effect give @s nausea 10 1 true
execute as @s[scores={Player_Infected=1}] run playsound minecraft:entity.zombie.death ambient @s ~ ~ ~ 1 0.7 1

## -- Infected Dialogue --
execute as @s[scores={Player_Infected=1}] at @s run tellraw @s {"text":"I don't feel so good...","color":"green","italic": true}
