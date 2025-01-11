## -- Bleeding Effects --
execute as @s[scores={Player_Bleeding=1..3}] run damage @s 2 generic
execute as @s[scores={Player_Bleeding=4..7}] run damage @s 4 generic
execute as @s[scores={Player_Bleeding=8..}] run damage @s 6 generic
execute as @s[scores={Player_Bleeding=1..}] run effect give @s blindness 5 1 true
execute as @s[scores={Player_Bleeding=5..}] run effect give @s weakness 3 0 true
execute as @s[scores={Player_Bleeding=1..}] at @s run function players:mechanics/bleeding/bleeding_particle1
execute as @s[scores={Player_Bleeding=1..9}] run scoreboard players add @s Player_Bleeding 1

## -- Bleeding Dialogue --
execute as @s[scores={Player_Bleeding=1..3}] at @s run tellraw @s {"text":"I'm bleeding, I need to find a bandange.","color":"dark_red"}
execute as @s[scores={Player_Bleeding=4..7}] at @s run tellraw @s {"text":"I'm still bleeding, I need to bandange this wound now!","color":"dark_red"}
execute as @s[scores={Player_Bleeding=8..}] at @s run tellraw @s {"text":"I am going to bleed out...","color":"dark_red"}

## -- Delayed Bleeding Particles --
# 1 - 3 are large particle sets, 4 - 6 are small particle sets
execute as @s[scores={Player_Bleeding=1..}] run schedule function players:mechanics/bleeding/bleeding_particle4 10t
execute as @s[scores={Player_Bleeding=1..}] run schedule function players:mechanics/bleeding/bleeding_particle1 1s

execute as @s[scores={Player_Bleeding=4..}] run schedule function players:mechanics/bleeding/bleeding_particle5 30t
execute as @s[scores={Player_Bleeding=4..}] run schedule function players:mechanics/bleeding/bleeding_particle2 2s

execute as @s[scores={Player_Bleeding=8..}] run schedule function players:mechanics/bleeding/bleeding_particle6 50t
execute as @s[scores={Player_Bleeding=8..}] run schedule function players:mechanics/bleeding/bleeding_particle3 3s
