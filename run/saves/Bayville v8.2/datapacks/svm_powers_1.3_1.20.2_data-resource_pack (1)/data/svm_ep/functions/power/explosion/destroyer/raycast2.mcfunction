execute unless entity @s[distance=..50] run tag @s add end_raycast
execute if entity @e[tag=executor,dx=1] run tag @s add end_raycast

particle minecraft:dust 0.15 0.15 0.15 1 ^ ^-0.4 ^ 0.25 0.25 0.25 0 2
particle minecraft:dust 0.25 0.25 0.25 .5 ^ ^-0.4 ^ 0.15 0.15 0.15 0 1

execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=100..}] positioned ^ ^-0.4 ^ run particle minecraft:dust 0.25 0.1 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=89..99}] positioned ^ ^-0.4 ^ run particle minecraft:dust 0.5 0.25 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=79..88}] positioned ^ ^-0.4 ^ run particle minecraft:dust 0.75 0.5 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=69..78}] positioned ^ ^-0.4 ^ run particle minecraft:dust 0.9 0.75 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=59..68}] positioned ^ ^-0.4 ^ run particle minecraft:dust 1 0.9 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=49..58}] positioned ^ ^-0.4 ^ run particle minecraft:dust 18000000 1 0 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=39..48}] positioned ^ ^-0.4 ^ run particle minecraft:dust 18000000 1 0.1 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=39..48}] positioned ^ ^-0.4 ^ run particle minecraft:dust 18000000 18000000 0.25 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=29..38}] positioned ^ ^-0.4 ^ run particle minecraft:dust 18000000 18000000 0.5 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=19..28}] positioned ^ ^-0.4 ^ run particle minecraft:dust 18000000 18000000 1 2
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=..5}] positioned ^ ^-0.4 ^ run particle minecraft:explosion ~ ~ ~ 0.53 0.53 0.53 0 1
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=..5}] positioned ^ ^-0.4 ^ run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.7 5

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.65 run function svm_ep:power/explosion/destroyer/raycast2
tag @s remove end_raycast
