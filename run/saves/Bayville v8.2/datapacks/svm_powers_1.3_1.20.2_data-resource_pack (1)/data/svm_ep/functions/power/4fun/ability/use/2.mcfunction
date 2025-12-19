scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 200
scoreboard players set @s[scores={svm_ep.used_move=..300}] svm_ep.used_move 300
scoreboard players set @s svm_ep.p.4fun_ability_02_delay 580
scoreboard players add %METEOR_RAIN svm_ep.world_settings 512

effect give @e[distance=..25] minecraft:slowness 2 10 true
scoreboard players set @s svm_ep.using_move 900
execute at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 0 1
