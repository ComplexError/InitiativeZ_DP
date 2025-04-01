data modify entity @s attributes[{id:"follow_range"}].base set value 1.0
tag @s add snowballed
execute as @s run function master:callback/schedule {ticks:200,selector:"@s",command:"execute as @s run function players:mechanics/stealth/reset"}