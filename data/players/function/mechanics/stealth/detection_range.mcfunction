execute as @s[predicate=!master:is_sprinting,predicate=master:is_sneaking] at @s run return run function players:mechanics/stealth/close
execute as @s[predicate=!master:is_sprinting,predicate=!master:is_sneaking] at @s run return run function players:mechanics/stealth/middle
execute as @s[predicate=master:is_sprinting,predicate=!master:is_sneaking] at @s run return run function players:mechanics/stealth/far