data merge entity @s {Health:20f,attributes:[{base:20.0,id:"max_health"},{base:0.39,id:"movement_speed"},{base:0.5,id:"attack_damage"},{base:10d,id:"follow_range"},{base:1.0,id:"scale"}]}

data merge entity @s {CustomNameVisible:1b,CustomName:"Dasher"}

item replace entity @s armor.head with leather_helmet[dyed_color=1908001,trim={material:"minecraft:iron",pattern:"minecraft:shaper"},unbreakable={},enchantment_glint_override=false] 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=1908001,trim={material:"minecraft:iron",pattern:"minecraft:host"}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=1908001,trim={material:"minecraft:iron",pattern:"minecraft:sentry"}] 1
item replace entity @s armor.feet with golden_boots[trim={material:"minecraft:netherite",pattern:"minecraft:eye"},enchantments={"minecraft:feather_falling":4}] 1
item replace entity @s weapon.mainhand with wooden_sword 1

tag @s add Northern
tag @s add Revenant