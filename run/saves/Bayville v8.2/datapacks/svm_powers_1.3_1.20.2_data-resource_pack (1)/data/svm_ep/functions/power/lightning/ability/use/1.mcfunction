scoreboard players set @s svm_ep.p.lightning_ability_01_delay 160
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.p.lightning_ability_01_delay 35
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] svm_ep.p.lightning_ability_01_delay 30
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] svm_ep.p.lightning_ability_01_delay 20
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.p.lightning_ability_01_delay 10
scoreboard players set @s[tag=svm_ep.npc_thunder_god] svm_ep.p.lightning_ability_01_delay 100
scoreboard players remove @s svm_ep.mana 30
scoreboard players add @s svm_ep.used_move 80
execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_slowness 5
execute at @s run effect give @a[distance=..30] minecraft:slowness 1 6 true
execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_speed 8
execute at @s run effect give @a[distance=..30] minecraft:speed 1 5 true

tag @s add executor
execute anchored eyes positioned ^ ^ ^1 run function svm_ep:power/lightning/lightning/raycast
tag @s remove executor
tag @s remove end_raycast

execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3
execute if predicate svm_ep:chance/67_percent run scoreboard players reset @s svm_ep.numbers
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"What's the matter?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Do you really think you can get away?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Distance doesn't matter!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1..}] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..50] ~ ~1 ~ 4 0.7