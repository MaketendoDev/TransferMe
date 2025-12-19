scoreboard players add @s svm_ep.lifetime 1

#GRASS BLOCKS
#1ST FRAME
execute at @s[scores={svm_ep.lifetime=1}] positioned ~ ~ ~ if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block

#2ND FRAME
execute at @s[scores={svm_ep.lifetime=2}] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=2}] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=2}] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=2}] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block

#3RD FRAME
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~2 ~ ~ if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~-2 ~ ~ if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~ ~ ~2 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/75_percent positioned ~ ~ ~-2 if block ~ ~ ~ #minecraft:base_stone_overworld run setblock ~ ~ ~ grass_block

#WOOD BLOCKS
#1
execute at @s[scores={svm_ep.lifetime=2}] positioned ~ ~ ~ run function svm_ep:power/flora/tree_place/place_oak_wood
#2
execute at @s[scores={svm_ep.lifetime=3}] positioned ~ ~1 ~ run function svm_ep:power/flora/tree_place/place_oak_wood

execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/25_percent positioned ~ ~ ~1 run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/25_percent positioned ~ ~ ~-1 run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/25_percent positioned ~1 ~ ~ run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=3}] if predicate svm_ep:chance/25_percent positioned ~-1 ~ ~ run function svm_ep:power/flora/tree_place/place_oak_wood

#3
execute at @s[scores={svm_ep.lifetime=4}] positioned ~ ~2 ~ run function svm_ep:power/flora/tree_place/place_oak_wood

execute at @s[scores={svm_ep.lifetime=4}] if predicate svm_ep:chance/25_percent positioned ~ ~ ~1 if block ~ ~-1 ~ minecraft:oak_wood run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=4}] if predicate svm_ep:chance/25_percent positioned ~ ~ ~-1 if block ~ ~-1 ~ minecraft:oak_wood run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=4}] if predicate svm_ep:chance/25_percent positioned ~1 ~1 ~ if block ~ ~-1 ~ minecraft:oak_wood run function svm_ep:power/flora/tree_place/place_oak_wood
execute at @s[scores={svm_ep.lifetime=4}] if predicate svm_ep:chance/25_percent positioned ~-1 ~1 ~ if block ~ ~-1 ~ minecraft:oak_wood run function svm_ep:power/flora/tree_place/place_oak_wood

#4
execute at @s[scores={svm_ep.lifetime=5}] positioned ~ ~3 ~ run function svm_ep:power/flora/tree_place/place_oak_wood

execute at @s[scores={svm_ep.lifetime=6}] run tp @a[dx=1] ~ ~2 ~
execute at @s[scores={svm_ep.lifetime=6}] run tp @s ~ ~1 ~
execute at @s[scores={svm_ep.lifetime=6}] run tp @a[dx=1] ~ ~2 ~
execute at @s[scores={svm_ep.lifetime=6}] run tp @s ~ ~1 ~
execute at @s[scores={svm_ep.lifetime=6}] run tp @a[dx=1] ~ ~2 ~
execute at @s[scores={svm_ep.lifetime=6}] run tp @s ~ ~1 ~

execute at @s[scores={svm_ep.lifetime=6..}] run function svm_ep:power/flora/tree_place/tick2

execute at @s run tp @a[dx=1] ~ ~2 ~

kill @s[scores={svm_ep.lifetime=36..}]