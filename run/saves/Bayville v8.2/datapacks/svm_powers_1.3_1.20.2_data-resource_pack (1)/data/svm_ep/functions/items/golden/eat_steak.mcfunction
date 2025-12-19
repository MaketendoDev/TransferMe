advancement revoke @s only svm_ep:eat/golden_steak
function svm_ep:items/golden/eat_generic

effect give @s minecraft:saturation 8 1 true
effect give @s minecraft:glowing 1 6 true
effect give @s minecraft:regeneration 3 3 true

execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item gold_ingot ~ ~ ~ 0.05 0.05 0.05 0.08 10