tag @s add executor

execute on target at @s as @e[tag=executor] unless score @s svm_ep.p.flora_ability_04_delay matches 1.. if entity @s[distance=..2.5] run function svm_ep:power/flora/ability/use/4


tag @s remove executor