execute as @s[predicate=master:is_sneaking] at @s if block ~ ~-2 ~ minecraft:bedrock if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:barrier
execute as @s[predicate=master:is_sneaking] at @s if block ~ ~-2 ~ minecraft:bedrock run effect give @s minecraft:regeneration 1 2 true
execute as @s[predicate=!master:is_sneaking] at @s unless block ~ ~1 ~ barrier run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace minecraft:barrier
execute as @s[predicate=master:input_sprint,predicate=!master:is_swimming] at @s unless block ~ ~1 ~ air run function players:mechanics/movement/crawling/sprint_crawl