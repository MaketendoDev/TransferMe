#execute at @s run fill ~3 ~ ~3 ~-3 ~26 ~-3 air destroy
execute at @s run summon minecraft:lightning_bolt
execute at @s run playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..50] ~ ~ ~ 2 0.7
execute at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..50] ~ ~ ~ 4 1.3
execute at @s[tag=svm_ep.colloseum_pillar1] run function svm_ep:structures/colloseum/pillar1
execute at @s[tag=svm_ep.colloseum_pillar2] run function svm_ep:structures/colloseum/pillar2
execute at @s[tag=svm_ep.colloseum_pillar3] run function svm_ep:structures/colloseum/pillar3
execute at @s run tag @e[tag=svm_ep.colloseum_pillar,limit=1,sort=nearest,tag=!svm_ep.colloseum_pillar_active] add svm_ep.colloseum_pillar_active
execute at @s run fill ~6 ~ ~6 ~-6 ~ ~-6 minecraft:grass_block replace #svm_ep:no_physical_hitbox
execute at @s run fill ~6 ~-1 ~6 ~-6 ~-2 ~-6 minecraft:dirt replace #svm_ep:no_physical_hitbox
execute at @s run fill ~6 ~-3 ~6 ~-6 ~-7 ~-6 minecraft:stone replace #svm_ep:no_physical_hitbox

execute at @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 minecraft:grass_block replace #svm_ep:no_physical_hitbox
execute at @s run fill ~7 ~-2 ~7 ~-7 ~-3 ~-7 minecraft:dirt replace #svm_ep:no_physical_hitbox
execute at @s run fill ~7 ~-4 ~7 ~-7 ~-6 ~-7 minecraft:stone replace #svm_ep:no_physical_hitbox

kill @s
