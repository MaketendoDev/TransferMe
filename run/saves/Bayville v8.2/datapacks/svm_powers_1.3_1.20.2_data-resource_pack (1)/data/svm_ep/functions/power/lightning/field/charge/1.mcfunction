execute at @s as @e[tag=!same_id,tag=!svm_ep.permament_redirected,tag=svm_ep.can_redirect,distance=..3.5,tag=!svm_ep.lightning_ray] at @s run function svm_ep:power/lightning/field/projectile
execute positioned ~ ~1 ~ if predicate svm_ep:chance/10_percent run function svm_ep:power/lightning/field/ray/shoot
execute positioned ~ ~1 ~ run particle minecraft:electric_spark ~ ~ ~ 0 0 0 2 2
particle dust 0.7 18000000 18000000 1.6 ~ ~1 ~ 0.5 1 0.5 0 2
particle dust 0.2 1 1 1.4 ~ ~1 ~ 1 2 1 0 3
particle dust 18000000 0.87 0 1.35 ~ ~1 ~ 1.65 2.1 1.65 0 2
playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 0.5 1
particle minecraft:glow ~ ~1 ~ 1 1 1 0.5 10
tag @s add executor

execute at @s as @e[tag=!executor,type=!#svm_ep:technical,distance=..3] if predicate svm_ep:chance/33_percent at @s run function svm_ep:power/lightning/field/hitby

tag @s remove executor