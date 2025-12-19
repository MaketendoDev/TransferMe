scoreboard players add @s svm_ep.lifetime 1
execute at @s run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~1 ~ ~ run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~ ~1 ~ run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~ ~ ~1 run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~-1 ~ ~ run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~ ~-1 ~ run function svm_ep:power/flora/mossify/mossify
execute if predicate svm_ep:chance/67_percent at @s positioned ~ ~ ~-1 run function svm_ep:power/flora/mossify/mossify


execute at @s run function svm_ep:system/set_random_rotation
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s if block ~ ~ ~ minecraft:moss_block run tp @s ^ ^ ^0.5

kill @s[scores={svm_ep.lifetime=10..}]