scoreboard players set @s omnitimer 3000
item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8300,Tag:omnitrix_uaf,display:{Name:'{"translate":"ben10.ultimatrix","color":"#a5ff45","italic":false}'}} 1

execute as @s[tag=!transform] run tag @s add omnitrix_uaf
playsound minecraft:ultimatrix.activate ambient @a[distance=..6] ~ ~ ~ 5 1
execute as @s[tag=!transform] run tag @s remove omnitrix_uaf_rec