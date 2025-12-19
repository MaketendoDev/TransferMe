execute at @s run tp @s ^ ^ ^0.55 ~ ~0.03
execute at @s run particle dust 1 0 0 0.15 ~ ~ ~ 0.65 0.65 0.65 0 1
execute at @s run particle dust 1 0.1 0 0.25 ~ ~ ~ 0.45 0.45 0.45 0 2
execute at @s run particle dust 18000000 0.25 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0 1
execute at @s run particle dust 18000000 0.95 0 1.25 ~ ~ ~ 0.05 0.05 0.05 0 1


execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 1.6 1
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 1
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.8 1
execute at @s if entity @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hit
execute at @s if entity @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run tag @s add hit
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit