execute as @a unless entity @s[scores={Player_BandageCD=1..}] run scoreboard players set @s Player_BandageCD 0
execute as @a[scores={Player_BandageCD=1..}] at @s run scoreboard players remove @s Player_BandageCD 1
