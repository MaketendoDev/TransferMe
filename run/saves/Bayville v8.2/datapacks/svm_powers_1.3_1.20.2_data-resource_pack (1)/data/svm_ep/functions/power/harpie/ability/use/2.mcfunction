execute at @s anchored eyes run function svm_ep:power/harpie/razor/shoot
scoreboard players remove @s svm_ep.mana 5
scoreboard players add @s svm_ep.used_move 10
scoreboard players set @s svm_ep.using_move 100
scoreboard players set @s svm_ep.p.harpie_ability_02_delay 10