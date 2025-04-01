execute if entity @s[nbt={Health:0.0f}] run function players:mechanics/death/summon_corpse
execute as @s run function master:callback/schedule {ticks:120,selector:"@s",command:"execute unless entity @s[nbt={Health:0.0f}] run advancement revoke @s only master:player_death"}
execute as @s run clear @s