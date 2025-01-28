## -- Bleeding Effects --
execute as @s[scores={Player_Bleeding=1..3}] run damage @s 2 generic
execute as @s[scores={Player_Bleeding=4..7}] run damage @s 4 generic
execute as @s[scores={Player_Bleeding=8..}] run damage @s 6 generic
execute as @s[scores={Player_Bleeding=1..}] run effect give @s blindness 5 1 true
execute as @s[scores={Player_Bleeding=5..}] run effect give @s weakness 3 0 true
execute as @s[scores={Player_Bleeding=1..}] at @s run function players:mechanics/bleeding/bleeding_particle1
execute as @s[scores={Player_Bleeding=1..9}] run scoreboard players add @s Player_Bleeding 1

## -- Bleeding Dialogue --
execute as @s[scores={Player_Bleeding=1..3}] at @s run tellraw @s {"text":"I'm bleeding, I need to find a bandage.","color":"dark_red"}
execute as @s[scores={Player_Bleeding=4..7}] at @s run tellraw @s {"text":"I'm still bleeding, I need to bandage this wound now!","color":"dark_red"}
execute as @s[scores={Player_Bleeding=8..}] at @s run tellraw @s {"text":"I am going to bleed out...","color":"dark_red"}

## -- Delayed Bleeding Particles --
# 1 is large particle sets, 2 is small particle sets
execute as @s[scores={Player_Bleeding=1..}] run schedule function players:mechanics/bleeding/bleeding_particle2 10t append
execute as @s[scores={Player_Bleeding=1..}] run schedule function players:mechanics/bleeding/bleeding_particle1 1s append

execute as @s[scores={Player_Bleeding=4..}] run schedule function players:mechanics/bleeding/bleeding_particle2 30t append
execute as @s[scores={Player_Bleeding=4..}] run schedule function players:mechanics/bleeding/bleeding_particle1 2s append

execute as @s[scores={Player_Bleeding=8..}] run schedule function players:mechanics/bleeding/bleeding_particle2 50t append
execute as @s[scores={Player_Bleeding=8..}] run schedule function players:mechanics/bleeding/bleeding_particle1 3s append
