scoreboard players set @s svm_ep.npc 1
scoreboard players set @s svm_ep.npc_strength 3
tag @s add svm_ep.npc
scoreboard players set @s svm_ep.fighting_style 1
loot replace entity @s weapon loot svm_ep:items/normal_katana
attribute @s minecraft:generic.max_health base set 50
data merge entity @s {Health:50}