schedule function svm_ep:40s 40s
execute as @e[type=#svm_ep:give_ids,tag=!svm_ep.has_entity_id] run function svm_ep:npc/check_spawn
execute as @e[tag=svm_ep.power_user,tag=!svm_ep.has_entity_id] run function svm_ep:system/new_entity

title @a times 1t 7t 12t
execute store result score %ITEMS svm_ep.entity_count if entity @e[type=item]
execute store result score %MARKERS svm_ep.entity_count if entity @e[type=marker]
execute store result score %ITEM_DISPLAYS svm_ep.entity_count if entity @e[type=item_display]
execute store result score %PLAYERS svm_ep.entity_count if entity @e[type=player]
execute store result score %TOTAL svm_ep.entity_count if entity @e
execute store result score %TECHNICAL svm_ep.entity_count if entity @e[type=#svm_ep:technical]
execute store result score %NON_TECHNICAL svm_ep.entity_count if entity @e[type=!#svm_ep:technical]

