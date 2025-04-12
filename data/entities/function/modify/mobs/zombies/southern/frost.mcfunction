data merge entity @s {Health:20f,attributes:[{base:20.0,id:"max_health"},{base:0.39,id:"movement_speed"},{base:0.5,id:"attack_damage"},{base:10d,id:"follow_range"},{base:1.2,id:"scale"}]}

data merge entity @s {CustomNameVisible:1b,CustomName:"Frost"}

item replace entity @s armor.head with ice 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=11267839,trim={material:"minecraft:quartz",pattern:"minecraft:ward"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=11267839,trim={material:"minecraft:quartz",pattern:"minecraft:snout"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=11267839,trim={material:"minecraft:quartz",pattern:"minecraft:ward"}] 1

tag @s add Southern
tag @s add Frost