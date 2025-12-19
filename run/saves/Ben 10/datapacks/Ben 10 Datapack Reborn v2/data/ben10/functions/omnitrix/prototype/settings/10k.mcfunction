advancement grant @s only ben10:story/future_omnitrix
particle minecraft:flash ~ ~1 ~ 0 0 0 0 2
function ben10:omnitrix/prototype/settings/close
execute as @s[scores={update=1..}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8047,Tag:omnitrix_os_10k,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1

tag @s remove omnitrix_os
tag @s remove self_destruct_mode
clear @s carrot_on_a_stick{Tag:omnitrix_os} 1
clear @s carrot_on_a_stick{Tag:omnitrix_os_select} 1
clear @s carrot_on_a_stick{Tag:omnitrix_os_rec} 1
tag @s remove wait