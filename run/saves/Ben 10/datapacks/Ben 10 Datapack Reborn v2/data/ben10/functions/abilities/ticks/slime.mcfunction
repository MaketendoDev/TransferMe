effect give @s minecraft:slowness 4 1 true
particle minecraft:block slime_block ~ ~1 ~ 0.2 0.4 0.2 0 10
scoreboard players add @s slime 1
execute as @s[scores={slime=45..}] run tag @s remove slime
execute as @s[scores={slime=45..}] run scoreboard players reset @s slime