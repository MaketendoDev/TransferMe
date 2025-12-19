tag @s remove svm_ep.power_user
tag @s remove svm_ep.phase_user
tag @s remove svm_ep.lightning_user
tag @s remove svm_ep.flora_user
tag @s remove svm_ep.slime_user
tag @s remove svm_ep.fire_user
tag @s remove svm_ep.explosion_user
tag @s remove svm_ep.ice_user
tag @s remove svm_ep.gravity_user
tag @s remove svm_ep.harpie_user
tag @s remove svm_ep.dimension_traveler_user
tag @s remove svm_ep.4fun_user
scoreboard players reset @s svm_ep.p.gravity_repel_zone
scoreboard players reset @s svm_ep.p.harpie_movement
effect give @s minecraft:blindness 1 0 true
#execute at @s run summon minecraft:lightning_bolt ~ ~5.75 ~
execute at @s run particle cloud ~ ~.6 ~ 0 0 0 0.7 1000
execute at @s run playsound minecraft:entity.guardian.death master @a[distance=..30] ~ ~ ~ 3 0