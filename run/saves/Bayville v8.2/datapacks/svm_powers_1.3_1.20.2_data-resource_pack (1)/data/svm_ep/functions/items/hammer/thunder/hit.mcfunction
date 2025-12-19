execute as @e[tag=hitby,distance=..5] run damage @s 8 player_attack by @a[tag=same_id,limit=1]
execute as @e[tag=hitby,distance=..5] at @s run particle minecraft:crit ~ ~0.7 ~ 0.3 0.7 0.3 0.5 20
execute as @e[tag=hitby,distance=..5] at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..20] ~ ~ ~ 1.25 0.8

execute at @s run playsound minecraft:item.trident.return master @a[distance=..70] ~ ~ ~ 1.25 0.5 1

particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:crit ~ ~ ~ 0 0 0 0.5 20


execute if entity @a[tag=same_id,tag=svm_ep.lightning_user] run summon minecraft:lightning_bolt
execute if entity @a[tag=same_id,tag=svm_ep.lightning_user] run scoreboard players add @a[distance=..50] svm_ep.shaking 10
