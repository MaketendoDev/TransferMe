scoreboard players remove @s svm_ep.p.explosion_barrier_effect 1
scoreboard players set @s[scores={svm_ep.p.explosion_barrier_effect=250..}] svm_ep.p.explosion_barrier_effect 250
effect give @s minecraft:slowness 1 0 true
effect give @s[scores={svm_ep.p.explosion_barrier_effect=50..}] minecraft:slowness 1 1 true
effect give @s[scores={svm_ep.p.explosion_barrier_effect=80..}] minecraft:slowness 1 2 true
effect give @s[scores={svm_ep.p.explosion_barrier_effect=120..}] minecraft:slowness 1 3 true
effect give @s[scores={svm_ep.p.explosion_barrier_effect=150..}] minecraft:slowness 1 4 true
effect give @s[scores={svm_ep.p.explosion_barrier_effect=190..}] minecraft:slowness 1 5 true



effect give @s[scores={svm_ep.p.explosion_barrier_effect=60..}] minecraft:blindness 1 0 true
