#scoreboard players set @s svm_ep.using_move 100
scoreboard players remove @s svm_ep.mana 5
scoreboard players add @s svm_ep.used_move 30

scoreboard players set @s svm_ep.p.flora_ability_04_delay 3
scoreboard players set @s[tag=svm_ep.npc] svm_ep.p.flora_ability_04_delay 10

scoreboard players add @s svm_ep.p.flora_slashes_stage 1
execute as @s[scores={svm_ep.p.flora_slashes_stage=1..3}] at @s run function svm_ep:power/flora/thorned_slashes/punch
execute as @s[scores={svm_ep.p.flora_slashes_stage=4}] at @s run scoreboard players set @s svm_ep.using_move 87
scoreboard players set @s[scores={svm_ep.p.flora_slashes_stage=4}] svm_ep.p.flora_ability_04_delay 25
scoreboard players set @s[scores={svm_ep.p.flora_slashes_stage=4},tag=svm_ep.npc] svm_ep.p.flora_ability_04_delay 60
scoreboard players reset @s[scores={svm_ep.p.flora_slashes_stage=4}] svm_ep.p.flora_slashes_stage