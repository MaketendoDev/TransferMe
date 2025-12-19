scoreboard players add @s svm_ep.p.lightning_charge 3
scoreboard players add @s[scores={svm_ep.p.lightning_charge_level=..30}] svm_ep.p.lightning_charge 6
scoreboard players add @s svm_ep.p.lightning_charge_level 1
scoreboard players set @s[scores={svm_ep.p.lightning_charge_level=0}] svm_ep.p.lightning_charge_level 1
execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:shift run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.used_move 2
scoreboard players add @s svm_ep.mana_drain 50
scoreboard players add @s svm_ep.using_move 1

scoreboard players add @s[scores={svm_ep.p.lightning_charge_level=50..80}] svm_ep.mana_drain 150
scoreboard players add @s[scores={svm_ep.p.lightning_charge_level=60..80}] svm_ep.mana_drain 150
scoreboard players add @s[scores={svm_ep.p.lightning_charge_level=70..80}] svm_ep.mana_drain 150

execute as @s[scores={svm_ep.p.lightning_charge_level=60}] run function svm_ep:power/lightning/charge/charge_up
execute as @s[scores={svm_ep.p.lightning_charge_level=70}] run function svm_ep:power/lightning/charge/charge_up
execute as @s[scores={svm_ep.p.lightning_charge_level=80}] run function svm_ep:power/lightning/charge/charge_up


scoreboard players add @s svm_ep.p.lightning_ability_16_delay 1