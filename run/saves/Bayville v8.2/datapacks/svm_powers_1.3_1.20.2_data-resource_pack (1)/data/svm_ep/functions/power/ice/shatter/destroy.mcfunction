scoreboard players set @s svm_ep.numbers 0
execute store result score @s svm_ep.numbers run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace ice
execute as @s[scores={svm_ep.numbers=1..}] run particle block ice ~ ~ ~ 1 1 1 0.45 20
execute as @s[scores={svm_ep.numbers=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 0.85 0.3
scoreboard players operation @s svm_ep.numbers /= %ice_shatter_cost_divisor svm_ep.world_settings
scoreboard players operation @s svm_ep.mana -= @s svm_ep.numbers
execute as @s[scores={svm_ep.mana=..0}] run scoreboard players set @s svm_ep.mana 0
execute as @s[scores={svm_ep.mana=..0}] run scoreboard players reset @s svm_ep.using_move