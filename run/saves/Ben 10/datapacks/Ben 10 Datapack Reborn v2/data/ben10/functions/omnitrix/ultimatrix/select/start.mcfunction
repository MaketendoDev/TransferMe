scoreboard players add @s start 1
tag @s add start

item replace entity @s[scores={start=1}] weapon.offhand with carrot_on_a_stick{CustomModelData:9724,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=2}] weapon.offhand with carrot_on_a_stick{CustomModelData:9728,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=3}] weapon.offhand with carrot_on_a_stick{CustomModelData:9725,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=4}] weapon.offhand with carrot_on_a_stick{CustomModelData:9729,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=5}] weapon.offhand with carrot_on_a_stick{CustomModelData:9726,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=6}] weapon.offhand with carrot_on_a_stick{CustomModelData:9730,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=7}] weapon.offhand with carrot_on_a_stick{CustomModelData:9727,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1
item replace entity @s[scores={start=8}] weapon.offhand with carrot_on_a_stick{CustomModelData:9731,Tag:omnitrix_uaf_select,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1

execute as @s[tag=!stop,scores={start=9..}] run function ben10:omnitrix/ultimatrix/select/cycle