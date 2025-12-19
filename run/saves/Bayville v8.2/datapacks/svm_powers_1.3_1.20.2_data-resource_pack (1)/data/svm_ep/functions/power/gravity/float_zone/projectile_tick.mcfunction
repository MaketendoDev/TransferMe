
scoreboard players add @s svm_ep.lifetime 1
execute at @s[tag=!svm_ep.gravity_repel_field,scores={svm_ep.lifetime=..20}] run function svm_ep:power/gravity/field/startup
execute at @s[tag=!svm_ep.gravity_repel_field,scores={svm_ep.lifetime=20..}] run function svm_ep:power/gravity/field/active
execute at @s[tag=svm_ep.gravity_repel_field,scores={svm_ep.lifetime=..20}] run function svm_ep:power/gravity/field/repel/startup
execute at @s[tag=svm_ep.gravity_repel_field,scores={svm_ep.lifetime=20..}] run function svm_ep:power/gravity/field/repel/active