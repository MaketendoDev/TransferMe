tag @s add attacked_entity
$scoreboard players add @s svm_ep.deal_damage $(damage)
$tag $(attacker) add attacker
function svm_ep:damage/amplify
tag @e remove attacker
data modify storage svm_ep:damage input set value {"damage":0}
execute store result storage svm_ep:damage input.damage int 1 run scoreboard players get @s svm_ep.deal_damage
$data modify storage svm_ep:damage input.type set value $(type)
$data modify storage svm_ep:damage input.attacker set value "$(attacker)"
function svm_ep:damage/execute with storage svm_ep:damage input
tag @s remove attacked_entity
