data merge entity @s {Health:30f,attributes:[{base:30.0,id:"max_health"},{base:0.36,id:"movement_speed"},{base:1.5,id:"attack_damage"},{base:10d,id:"follow_range"},{base:1.1,id:"scale"}]}

data merge entity @s {CustomNameVisible:1b,CustomName:"Fizzle"}

item replace entity @s armor.head with magma_block 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=10699776,trim={material:"minecraft:iron",pattern:"minecraft:host"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=10699776,trim={material:"minecraft:iron",pattern:"minecraft:sentry"}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=10699776,trim={material:"minecraft:netherite",pattern:"minecraft:eye"},enchantments={"minecraft:feather_falling":4}] 1

tag @s add Northern
tag @s add Fizzle