execute store result score @s svm_ep.deal_damage at @s run fill ~-1.3 ~-1.3 ~-1.3 ~1.3 ~2.5 ~1.3 air replace #minecraft:ice

execute at @s[scores={svm_ep.deal_damage=1..}] run particle minecraft:block ice ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute at @s[scores={svm_ep.deal_damage=2..}] run particle minecraft:block ice ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute at @s[scores={svm_ep.deal_damage=4..}] run particle minecraft:block ice ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute at @s[scores={svm_ep.deal_damage=8..}] run particle minecraft:block ice ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute at @s[scores={svm_ep.deal_damage=12..}] run particle minecraft:block ice ~ ~0.8 ~ 0.75 1 0.75 0.4 150

execute at @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.33 0.75
execute at @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.33 0.75
execute at @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 2
execute at @s[scores={svm_ep.deal_damage=10..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 1.33
execute at @s[scores={svm_ep.deal_damage=20..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 0.66
execute at @s[scores={svm_ep.deal_damage=30..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 2 0

function svm_ep:damage/deal_no_mob {"damage":"0","attacker":"@e[limit=1,tag=executor]","type":"no_cooldown"}
particle minecraft:dust 0.7 1 18000000 2 ~ ~0.85 ~ 0.4 0.84 0.4 0 10