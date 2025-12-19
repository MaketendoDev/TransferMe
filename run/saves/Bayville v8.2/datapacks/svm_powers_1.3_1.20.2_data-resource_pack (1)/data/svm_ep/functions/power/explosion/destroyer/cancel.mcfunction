tag @s add executor
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a[distance=..100] ~ ~ ~ 2 0
execute as @e[tag=svm_ep.explosion_destroyer_charge] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
scoreboard players reset @s svm_ep.p.explosion_destroyer_uncharge_delay
scoreboard players reset @s svm_ep.p.explosion_destroyer_charge

kill @e[tag=same_id]
tag @s remove executor
tag @e remove same_id