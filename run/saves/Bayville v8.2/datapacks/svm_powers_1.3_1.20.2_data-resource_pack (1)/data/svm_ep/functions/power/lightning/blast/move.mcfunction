execute at @s run tp @s ^ ^ ^0.65
execute at @s run particle dust 0 18000000 0.98 2 ~ ~ ~ 2 2 2 0 55
execute at @s run particle dust 18000000 18000000 0 1.8 ~ ~ ~ 3 3 3 0 50
execute at @s as @e[tag=!same_id,distance=..5,type=!#svm_ep:technical] run function svm_ep:power/lightning/blast/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ run summon marker ~ ~ ~ {Tags:["svm_ep.crack_4","svm_ep.crack"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 10