## ---- Generates and stores a random number ----
scoreboard players operation $generator entity.n1 *= $generator entity.n2
scoreboard players operation $generator entity.n1 %= $generator entity.n3
scoreboard players operation $generator entity.n5 = $generator entity.n1
scoreboard players operation $generator entity.n5 %= $generator entity.n4

scoreboard players operation @s entity.random = $generator entity.n5