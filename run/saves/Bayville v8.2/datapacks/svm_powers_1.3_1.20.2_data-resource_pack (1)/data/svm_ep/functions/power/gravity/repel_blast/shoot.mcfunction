execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 1.6
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 2
execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.gravity_repel_blast"],CustomName:'[{"text":"Repel Blast","color":"red"}]'}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @e[tag=new] svm_ep.projectile 100
tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @s anchored eyes positioned ^ ^ ^.15 run tp @e[tag=new] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^.4 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 430
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
tag @e remove new