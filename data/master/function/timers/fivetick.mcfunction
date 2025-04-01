schedule function master:timers/fivetick 5t
function players:fivetick

execute as @a[gamemode=adventure] at @s if entity @e[type=!player,tag=entity.parsed,tag=!snowballed,distance=..10] run function entities:mechanics/special

execute as @e[type=!player,tag=entity.parsed,tag=!snowballed] at @s if entity @p[distance=..10,gamemode=adventure] run function entities:mechanics/attack/type_detect