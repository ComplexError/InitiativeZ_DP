# if holding ui item, teleport the minecart
execute if items entity @s[predicate=!master:is_sneaking] weapon.* *[minecraft:custom_data={ui:1b}] run return run function players:healkit_ui/player/teleport

# closes the gui entity if player is not holding the designated item
execute if score @s ui.id matches 0.. run function players:healkit_ui/player/close