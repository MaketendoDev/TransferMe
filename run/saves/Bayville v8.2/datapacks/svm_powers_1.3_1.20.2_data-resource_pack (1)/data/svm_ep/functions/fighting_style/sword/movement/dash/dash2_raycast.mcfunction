execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..8.5] run tag @s add end_raycast
execute if entity @s[advancements={svm_ep:storyline/sword_mastery_3=false},distance=6.5..] run tag @s add end_raycast
execute if entity @s[advancements={svm_ep:storyline/sword_mastery_2=false},distance=4.5..] run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
particle minecraft:dust 1 1 1 0.76 ~ ~0.85 ~ 0.67 0.67 0.67 1 25
execute as @s[tag=end_raycast] positioned ^ ^ ^0.25 run tp @s ~ ~ ~
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.25 run function svm_ep:fighting_style/sword/movement/dash/dash2_raycast

