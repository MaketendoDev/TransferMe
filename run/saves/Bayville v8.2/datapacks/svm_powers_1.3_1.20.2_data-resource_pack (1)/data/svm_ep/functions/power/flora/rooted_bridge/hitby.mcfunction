damage @s 2 minecraft:player_attack by @e[tag=same_id,limit=1]
effect give @s minecraft:slowness 3 3 true
execute at @s run playsound minecraft:block.rooted_dirt.break master @a[distance=..30] ~ ~ ~ 1 0
execute at @s run particle minecraft:crit ~ ~.8 ~ 0.35 0.85 0.35 0.3 10