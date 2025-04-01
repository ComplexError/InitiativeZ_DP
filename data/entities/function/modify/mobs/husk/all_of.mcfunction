
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=7..9}] run function more_mobs:husk/dark_husk
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=10..12}] run function more_mobs:husk/mummy
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=13..14}] run function more_mobs:husk/villager_1
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=15..16}] run function more_mobs:husk/villager_2
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=17..19}] run function more_mobs:husk/pharaoh
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=20..}] run function more_mobs:husk/pharaoh2
#execute as @s[type=minecraft:husk,tag=!ts.mm.parsed,scores={ts.mm.random=5..15}] if block ~ ~-1 ~ minecraft:sandstone run function more_mobs:husk/anubis

execute as @s[scores={entity.random=0..}] run function entities:modify/mobs/husk/husk1