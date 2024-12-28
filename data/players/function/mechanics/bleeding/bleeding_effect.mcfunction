## -- Bleeding Effects --
execute as @s[scores={Player_Bleeding=1}] run damage @s 2 generic
execute as @s[scores={Player_Bleeding=1}] run effect give @s blindness 5 1 true
execute as @s[scores={Player_Bleeding=1}] at @s run particle block{block_state:"minecraft:red_concrete"} ~ ~1.1 ~ 0 0 0 0 10 normal @a
execute as @s[scores={Player_Bleeding=1}] at @s run particle block{block_state:"minecraft:nether_wart_block"} ~ ~1 ~ 0 0 0 0 10 normal @a
execute as @s[scores={Player_Bleeding=1}] at @s run particle block{block_state:"minecraft:red_concrete"} ~ ~0.9 ~ 0 0 0 0 10 normal @a

## -- Bleeding Dialogue --
execute as @s[scores={Player_Bleeding=1}] at @s run tellraw @s {"text":"I need to stop the Blood!!","color":"dark_red"}

## -- Delayed Bleeding Particles --
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle1 2s
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle2 3s
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle3 4s
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle1 5s