tag @s add bandaging
execute at @s[tag=bandaging] as @n[scores={Player_BandageCD=1..,Master_Looktarget=1..},tag=!bandaging] run function players:mechanics/bandaging/reject
execute at @s[tag=bandaging] as @n[scores={Player_BandageCD=0,Master_Looktarget=1..},tag=!bandaging] run function players:mechanics/bandaging/complete_bandage

clear @s[tag=bandaging] paper[minecraft:custom_data="{itemBandage:true}"] 1
playsound minecraft:entity.bogged.shear player @s[tag=bandaging] ~ ~ ~ 1 0.8 1


tag @s[tag=bandaging] remove bandaging
advancement revoke @s only players:ointment
advancement revoke @s only players:antibiotic
advancement revoke @s only players:stimulant
advancement revoke @s only players:revitalizer
advancement revoke @s only players:aloe_vera
advancement revoke @s only players:bandaged