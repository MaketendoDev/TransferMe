advancement revoke @s only svm_ep:eat/golden_flesh

effect give @s minecraft:saturation 1 6 true
effect give @s minecraft:glowing 1 6 true
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item gold_ingot ~ ~ ~ 0.05 0.05 0.05 0.08 10
function svm_ep:items/golden/eat_generic


execute store result score @s svm_ep.numbers run random value 1..10
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=1}] run function svm_ep:power/phase/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=2}] run function svm_ep:power/lightning/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=3}] run function svm_ep:power/flora/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=4}] run function svm_ep:power/slime/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=5}] run function svm_ep:power/explosion/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=6}] run function svm_ep:power/ice/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=7}] run function svm_ep:power/gravity/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=8}] run function svm_ep:power/harpie/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=9}] run function svm_ep:power/dimension_traveler/obtain
execute as @s[tag=!svm_ep.power_user,scores={svm_ep.numbers=10}] run function svm_ep:power/fire/obtain
