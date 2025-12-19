tag @s add executor

execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/lightning/punch/raycast
execute at @s run playsound minecraft:entity.player.attack.weak hostile @a ~ ~ ~ 3 1.2

#as @e[dx=0,tag=!executor,type=!#svm_ep:technical]
tag @s remove executor
tag @s remove end_raycast