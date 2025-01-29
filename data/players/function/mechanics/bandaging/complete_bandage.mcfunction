## -- Heal Bleed --
effect give @s[tag=ointment] minecraft:regeneration 10 1 true
advancement revoke @s[tag=ointment] only players:bleed

scoreboard players set @s[tag=ointment] Player_Bleeding 0

## -- Heal Infection --
advancement revoke @s[tag=antibiotic] only players:infect

scoreboard players set @s[tag=antibiotic] Player_Infected 0

## -- Stimulant --
effect give @s[tag=stimulant] minecraft:speed 6 1 true

## -- Revitalizer --
effect give @s[tag=revitalizer] minecraft:strength 8 0 true
effect give @s[tag=revitalizer] minecraft:absorption 15 0 true
effect give @s[tag=revitalizer] minecraft:resistance 10 0 true

## -- Aloe Vera --
effect give @s[tag=aloe_vera] minecraft:fire_resistance 20 0 true

## -- General effects --
effect give @s minecraft:regeneration 1 2 true


tag @s[tag=ointment] remove ointment
tag @s[tag=antibiotic] remove antibiotic
tag @s[tag=stimulant] remove stimulant
tag @s[tag=revitalizer] remove revitalizer
tag @s[tag=aloe_vera] remove aloe_vera
execute as @s at @s run particle heart ~ ~1.3 ~ 0.3 0.3 0.3 0 8 force
playsound minecraft:entity.bogged.shear player @s ~ ~ ~ 1 0.8 1

scoreboard players set @s Player_BandageCD 180