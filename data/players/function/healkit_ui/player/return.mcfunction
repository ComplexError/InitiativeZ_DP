data remove block 0 -64 0 Items
data modify block 0 -64 0 Items set from storage ui in
#loot give @s mine 0 -64 0 mainhand
tellraw @s {"text":"RIP item, you will be missed..."}