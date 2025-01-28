## -- Bleeding Effects --
execute as @s run damage @s 2 generic
execute as @s run effect give @s slowness 2 0 true
execute as @s at @s run function entities:mechanics/bleeding/bleeding_particle1