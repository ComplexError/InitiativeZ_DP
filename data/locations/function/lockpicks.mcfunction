## ---- Location Type Check ----
execute as @s[scores={TownID=1..}] run function locations:towns/locked_doors
execute as @s[scores={CityID=1..}] run function locations:cities/locked_doors
execute as @s[scores={PoiID=1..}] run function locations:poi/locked_doors


## --- Sounds, Particles and Item consume ---
execute at @s as @p[distance=0..6] run playsound minecraft:block.copper_door.open block @s ~ ~ ~ 1.2 0.8 0.5
clear @s[scores={Master_RNG=2..14}] tripwire_hook[max_stack_size=1,custom_name='"Lockpick"',hide_additional_tooltip={},rarity="uncommon",custom_data={itemDoorKey:true}] 1
execute as @s[scores={Master_RNG=2..14}] positioned ~ ~1.3 ~ run particle block{block_state:"minecraft:tripwire"} ^-0.5 ^ ^0.2 0 0 0 0 10 normal @s
execute at @a[scores={Master_RNG=2..14}] as @p[distance=0..5] run playsound minecraft:block.glass.break block @s ~ ~ ~ 1.1 1.5 0.5

## ---- Immediate Revoke ----
advancement revoke @s only locations:lockpick