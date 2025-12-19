execute at @s run tp @s[scores={svm_ep.lifetime=-15..}] ^ ^ ^1.55
execute at @s run particle dust 0.5 0 0.5 2 ~ ~ ~ 5 5 5 0 11 force @a
execute at @s run particle dust 0.1 0 0.1 2.5 ~ ~ ~ 5 5 5 0 6 force @a
execute at @s run particle dust 1 0 1 3 ~ ~ ~ 5 5 5 0 12 force @a
execute at @s run particle dust 0.75 0.1 0.75 4 ~ ~ ~ 3 3 3 1 4 force @a

execute at @s run particle dust 18000000 0.33 18000000 2 ~ ~ ~ 3 3 3 1 25 force @a
execute at @s run particle dust 18000000 0.67 18000000 3 ~ ~ ~ 2 2 2 1 25 force @a
execute at @s run particle dust 18000000 0.95 18000000 4 ~ ~ ~ 1 1 1 1 70 force @a


execute at @s run particle dust 0.05 0.01 0.05 4 ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle dust 0.5 0.1 0.5 4 ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle dust 1 0.1 1 4 ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle dust 1 0.1 1 4 ~ ~ ~ 11 11 11 1 3 force @a
execute at @s run particle dust 18000000 0.1 18000000 4 ~ ~ ~ 11 11 11 1 3 force @a
execute at @s run particle dust 0.5 0 0.5 2 ~ ~ ~ 12 12 12 0 2 force @a
execute at @s run particle dust 0.1 0 0.1 2.5 ~ ~ ~ 12 12 12 0 1 force @a
execute at @s run particle dust 1 0 1 3 ~ ~ ~ 12 12 12 0 1 force @a


execute at @s as @e[tag=!same_id,dx=4,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..9.7,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=hitby] run function svm_ep:power/gravity/blast/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless entity @e[tag=svm_ep.crack,distance=..4.5] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_5","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 10
scoreboard players add @a[distance=..75,scores={svm_ep.shaking=..3}] svm_ep.shaking 1