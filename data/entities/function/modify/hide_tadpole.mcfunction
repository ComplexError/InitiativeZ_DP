## ---- Hide Tadpole ----
effect give @s minecraft:invisibility infinite 0 true
attribute @s minecraft:scale base set 0.1
data merge entity @s {Invulnerable:1b,NoAI:1b,Tags:["entity.ignore.kill"]}