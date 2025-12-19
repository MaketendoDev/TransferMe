tag @s add executor
tag @s remove same_id
execute at @s as @e[tag=svm_ep.flora_vine] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run summon armor_stand ~ ~ ~ {Tags:["new1","svm_ep.flora_vine_swing"],ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Silent:1b}
execute as @e[tag=new1] at @s run function svm_ep:power/flora/swing/motion
scoreboard players set @e[tag=new1] svm_ep.projectile 10
ride @s dismount
ride @s mount @e[tag=new1,limit=1]
execute as @e[tag=same_id] run kill @s
execute at @s run playsound minecraft:entity.leash_knot.place master @a[distance=..30] ~ ~ ~ 1 0


tag @e remove new1
tag @e remove same_id
tag @s remove executor
tag @s remove svm_ep.flora_swing
