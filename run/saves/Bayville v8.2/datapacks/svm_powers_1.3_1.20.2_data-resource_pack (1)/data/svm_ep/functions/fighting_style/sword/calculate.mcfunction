#ABILITY COPIED TO SVM_EP.NUMBERS SCOREBOARD

scoreboard players operation %INPUT svm_ep.style_ability = @s svm_ep.numbers
scoreboard players operation %MOVEMENT_TYPE svm_ep.style_ability = @s svm_ep.numbers
scoreboard players operation %SLASH_TYPE svm_ep.style_ability = @s svm_ep.numbers
scoreboard players operation %SPEED_TYPE svm_ep.style_ability = @s svm_ep.numbers

scoreboard players operation %MOVEMENT_TYPE svm_ep.style_ability /= %100 svm_ep.numbers
scoreboard players operation %SLASH_TYPE svm_ep.style_ability %= %100 svm_ep.numbers
scoreboard players operation %SPEED_TYPE svm_ep.style_ability %= %10 svm_ep.numbers
scoreboard players operation %SLASH_TYPE svm_ep.style_ability /= %10 svm_ep.numbers

scoreboard players operation @s svm_ep.style_ability_type1 = %MOVEMENT_TYPE svm_ep.style_ability
scoreboard players operation @s svm_ep.style_ability_type2 = %SLASH_TYPE svm_ep.style_ability
scoreboard players operation @s svm_ep.style_ability_type3 = %SPEED_TYPE svm_ep.style_ability