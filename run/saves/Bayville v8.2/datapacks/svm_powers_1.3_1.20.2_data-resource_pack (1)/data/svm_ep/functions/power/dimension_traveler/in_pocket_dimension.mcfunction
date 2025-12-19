scoreboard players add @s[scores={svm_ep.food=7..}] svm_ep.mana_charge 14
scoreboard players remove @s[scores={svm_ep.food=7..,svm_ep.used_move=3..}] svm_ep.used_move 3

effect give @s[scores={svm_ep.food=7..}] minecraft:speed 1 3 true
effect give @s[scores={svm_ep.food=7..}] minecraft:jump_boost 1 3 true
effect give @s[scores={svm_ep.food=7..}] minecraft:strength 1 2 true