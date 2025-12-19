scoreboard players operation @s svm_ep.using_move_copy = @s svm_ep.using_move
scoreboard players operation @s svm_ep.using_move_copy %= %100 svm_ep.numbers
#execute if score @s svm_ep.style_ability_type1 matches 1 run scoreboard players add @s svm_ep.check_click 1
#execute unless score @s svm_ep.style_ability_type1 matches 1 run 
scoreboard players reset @s svm_ep.check_click
scoreboard players add @s svm_ep.used_move 2
scoreboard players add @s[scores={svm_ep.using_move_copy=80..}] svm_ep.used_move 4
scoreboard players add @s[scores={svm_ep.using_move_copy=95..}] svm_ep.used_move 4
execute as @s[type=player] unless entity @s[nbt={SelectedItem:{tag:{svm_ep.katana:1b}}}] run scoreboard players reset @s svm_ep.using_move
effect give @s minecraft:mining_fatigue 1 1 true
#MOVEMENTS
 #NORMAL
execute if score @s svm_ep.style_ability_type1 matches 1 if score @s svm_ep.style_ability_type3 matches 1 as @s[scores={svm_ep.using_move_copy=..99}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:fighting_style/sword/slash/slash
execute if score @s svm_ep.style_ability_type1 matches 1 if score @s svm_ep.style_ability_type3 matches 2 as @s[scores={svm_ep.using_move_copy=..92}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:fighting_style/sword/slash/slash
 #DASH
execute if score @s svm_ep.style_ability_type1 matches 2 if score @s svm_ep.style_ability_type3 matches 1 run function svm_ep:fighting_style/sword/movement/dash/tick_normal
execute if score @s svm_ep.style_ability_type1 matches 2 if score @s svm_ep.style_ability_type3 matches 2 run function svm_ep:fighting_style/sword/movement/dash/tick_slow
 #DANCE
execute if score @s svm_ep.style_ability_type1 matches 3 run function svm_ep:fighting_style/sword/movement/dance/tick
 #TRIPLE COMBO
execute if score @s svm_ep.style_ability_type1 matches 4 if score @s svm_ep.style_ability_type3 matches 1 run function svm_ep:fighting_style/sword/movement/triple_combo/tick_normal
execute if score @s svm_ep.style_ability_type1 matches 4 if score @s svm_ep.style_ability_type3 matches 2 run function svm_ep:fighting_style/sword/movement/triple_combo/tick_slow
 #TRIPLE COMBO
execute if score @s svm_ep.style_ability_type1 matches 5 if score @s svm_ep.style_ability_type3 matches 1 run function svm_ep:fighting_style/sword/movement/jump/tick_normal
execute if score @s svm_ep.style_ability_type1 matches 5 if score @s svm_ep.style_ability_type3 matches 2 run function svm_ep:fighting_style/sword/movement/jump/tick_slow


execute unless entity @s[scores={svm_ep.using_move_copy=1..}] run scoreboard players reset @s svm_ep.using_move
#SLASHES
tag @s add executor

execute as @e[tag=hitby] run function svm_ep:fighting_style/sword/slash/hitby

tag @s remove executor
effect give @s weakness 1 10 true

#MOVEMENT TYPE
#1 - NORMAL
#2 - DASH
#3 - DANCE
#4 - TRIPLE COMBO
#5 - JUMP

#SLASH TYPE
#1 - NORMAL
#2 - VERTICAL
#3 - 360
#4 - STAB

#SPEED TYPE
#1 - NORMAL
#2 - SLOW

#11001..11100 ABILITY 1
#11101..11200 ABILITY 2
#11201..11300 ABILITY 3

