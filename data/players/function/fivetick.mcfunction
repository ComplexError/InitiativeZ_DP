scoreboard players enable @a[tag=!player.modded] Randomize
execute as @a at @s run function players:mechanics/stealth/detection_range
execute as @a[scores={Randomize=1..},tag=!player.modded] run function players:modify/attributes