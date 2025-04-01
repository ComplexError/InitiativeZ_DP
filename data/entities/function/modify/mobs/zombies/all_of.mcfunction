#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=4..6}] run function more_mobs:zombie/villager
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=10..11}] run function more_mobs:zombie/enderman
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=13..18}] if block ~ ~-1 ~ #more_mobs:jungle_blocks run function more_mobs:zombie/jungle
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=6..11}] if block ~ ~-1 ~ minecraft:grass_block[snowy=true] run function more_mobs:zombie/snowy
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=14..19}] if block ~ ~-1 ~ minecraft:grass_block[snowy=true] run function more_mobs:zombie/frozen
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=11..19}] if block ~ ~-1 ~ #minecraft:ice run function more_mobs:zombie/frozen
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=12..16}] if block ~ ~ ~ minecraft:water run function more_mobs:zombie/lake
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=8..11}] if block ~ ~ ~ minecraft:water run function more_mobs:zombie/swamp
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=9}] run function more_mobs:zombie/lobber
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=10..11}] if block ~ ~-1 ~ #minecraft:base_stone_overworld run function more_mobs:zombie/boulder
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=12..14}] if block ~ ~ ~ minecraft:cave_air run function more_mobs:zombie/miner_1
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=15..16}] if block ~ ~ ~ minecraft:cave_air run function more_mobs:zombie/miner_2
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=16..}] if block ~ ~-1 ~ #minecraft:base_stone_overworld run function more_mobs:zombie/rotting
#execute as @s[type=minecraft:zombie,tag=!ts.mm.parsed,scores={ts.mm.random=19..20}] run function more_mobs:zombie/bloody

## ---- Score checks ----

## -- Redirect for Baby zombies --
execute as @s[nbt={IsBaby:1b}] run return run function entities:modify/mobs/zombies/all_of_isbaby

## -- Unique zombie field --
execute as @s[scores={entity.random=0..3}] run function entities:modify/mobs/zombies/southern/zom1
execute as @s[scores={entity.random=4..7}] run function entities:modify/mobs/zombies/southern/zom2
execute as @s[scores={entity.random=8..11}] run function entities:modify/mobs/zombies/southern/zom3
execute as @s[scores={entity.random=12..15}] run function entities:modify/mobs/zombies/southern/zom4
execute as @s[scores={entity.random=16..18}] run function entities:modify/mobs/zombies/southern/zom5
execute as @s[scores={entity.random=19..20}] run function entities:modify/mobs/zombies/southern/dasher