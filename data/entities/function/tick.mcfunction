## ---- Global selector ----
execute as @e[type=#entities:global_parsable,tag=!entity.parsed,tag=!entity.ignore,tag=!entity.ignore.kill] run function entities:modify/parse
execute as @e[type=#entities:stinky,tag=!entity.parsed,tag=!entity.ignore,tag=!entity.ignore.kill] run function entities:modify/vanish
