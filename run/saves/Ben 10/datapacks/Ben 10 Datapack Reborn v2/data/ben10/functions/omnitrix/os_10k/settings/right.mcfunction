scoreboard players add @s Right 1
scoreboard players add @s Turns 1
playsound minecraft:prototype.switch ambient @a[distance=..10] ~ ~ ~ 1 1

tag @s add Turn
item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8076,Tag:omnitrix_os_10k,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1

#10k
execute as @s[scores={Turns=7..,Left=2,Right=5}] at @s run function ben10:omnitrix/os_10k/settings/classic

execute as @s[scores={Turns=8..}] at @s run function ben10:omnitrix/os_10k/settings/reset