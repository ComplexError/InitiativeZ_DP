data merge entity @s {Health:30f,attributes:[{base:30.0,id:"max_health"},{base:0.36,id:"movement_speed"},{base:1.5,id:"attack_damage"},{base:10d,id:"follow_range"},{base:1.1,id:"scale"}]}

data merge entity @s {CustomNameVisible:1b,CustomName:"Fizzle"}

item replace entity @s armor.head with magma_block 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=7346200,trim={material:"minecraft:resin",pattern:"minecraft:silence"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=7346200,trim={material:"minecraft:resin",pattern:"minecraft:rib"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=7346200,trim={material:"minecraft:resin",pattern:"minecraft:silence"}] 1

tag @s add Southern
tag @s add Fizzle