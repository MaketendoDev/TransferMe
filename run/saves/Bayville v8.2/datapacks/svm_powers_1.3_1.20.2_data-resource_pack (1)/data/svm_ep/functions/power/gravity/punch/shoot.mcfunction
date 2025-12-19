tag @s add executor
execute anchored eyes positioned ~ ~ ~ summon minecraft:marker at @s run function svm_ep:power/gravity/punch/shoot_
tag @s remove executor
scoreboard players add @a[distance=..15] svm_ep.shaking 5
scoreboard players reset @s svm_ep.p.gravity_punch
effect clear @s slowness