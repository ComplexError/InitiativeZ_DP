## -- Bleeding Effects --
execute as @s[scores={Player_Bleeding=1}] run damage @s 2 generic
execute as @s[scores={Player_Bleeding=1}] run effect give @s blindness 5 1 true
execute as @s[scores={Player_Bleeding=1}] at @s run function players:mechanics/bleeding/bleeding_particle1

## -- Bleeding Dialogue --
execute as @s[scores={Player_Bleeding=1}] at @s run tellraw @s {"text":"I need to stop the Blood!!","color":"dark_red"}

## -- Delayed Bleeding Particles --
# 1 - 3 are large particle sets, 4 - 6 are small particle sets
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle4 10t
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle1 1s

execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle5 30t
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle2 2s

execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle6 50t
execute as @s[scores={Player_Bleeding=1}] run schedule function players:mechanics/bleeding/bleeding_particle3 3s
