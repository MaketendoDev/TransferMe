execute at @s as @e[dx=2,tag=!executor,type=!#svm_ep:technical] run damage @s 3 minecraft:player_attack by @e[tag=executor,limit=1,sort=nearest]
execute at @s as @e[distance=..2,tag=!executor,type=!#svm_ep:technical] run damage @s 3 minecraft:player_attack by @e[tag=executor,limit=1,sort=nearest]

execute at @s run tp @s ^ ^ ^.03 facing entity @e[tag=new32,limit=1,sort=nearest]
execute at @s run particle minecraft:end_rod ~ ~-0.1 ~ 0 0 0 0.01 1

execute at @s if entity @e[tag=new32,distance=..10] unless entity @e[tag=new32,distance=..1] run function svm_ep:power/phase/fury/raycast