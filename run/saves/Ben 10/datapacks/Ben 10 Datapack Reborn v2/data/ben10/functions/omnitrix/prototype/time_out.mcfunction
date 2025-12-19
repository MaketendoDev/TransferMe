scoreboard players set @s[scores={health=1..4}] omnitimer 1
execute as @s[advancements={ben10:os/heatblast/unlock=true,ben10:os/wildmutt/unlock=true,ben10:os/diamondhead/unlock=true,ben10:os/xlr8/unlock=true,ben10:os/greymatter/unlock=true,ben10:os/fourarms/unlock=true,ben10:os/stinkfly/unlock=true,ben10:os/ripjaws/unlock=true,ben10:os/upgrade/unlock=true,ben10:os/ghostfreak/unlock=true}] at @s run advancement grant @s only ben10:story/first_ten

execute as @s[advancements={ben10:os/heatblast/unlock=true,ben10:os/wildmutt/unlock=true,ben10:os/diamondhead/unlock=true,ben10:os/xlr8/unlock=true,ben10:os/greymatter/unlock=true,ben10:os/fourarms/unlock=true,ben10:os/stinkfly/unlock=true,ben10:os/ripjaws/unlock=true,ben10:os/upgrade/unlock=true,ben10:os/ghostfreak/unlock=true,ben10:os/cannonbolt/unlock=true,ben10:os/wildvine/unlock=true,ben10:os/blitzwolfer/unlock=true,ben10:os/snare_oh/unlock=true,ben10:os/frankenstrike/unlock=true,ben10:os/upchuck/unlock=true,ben10:os/ditto/unlock=true,ben10:os/eye_guy/unlock=true,ben10:os/way_big/unlock=true,ben10:os/feedback/unlock=true}] at @s run advancement grant @s only ben10:story/finish_omnitrix
execute as @s[scores={update=20..}] at @s run advancement grant @s only ben10:story/finish_omnitrix
stopsound @a[distance=..20] ambient minecraft:prototype.rat.timer
execute as @s[tag=!sound] at @s run playsound minecraft:prototype.timeout ambient @a[distance=..10] ~ ~ ~ 0.5 1
execute as @s[tag=sound] at @s run playsound minecraft:prototype.rat.timeout ambient @a[distance=..10] ~ ~ ~ 0.5 1
particle minecraft:dust 0.94 0 0 2 ~ ~1 ~ 0.6 0.8 0.6 1 100
clear @s carrot_on_a_stick{Tag:omnitrix_os_select}

title @s title {"text":"D","font":"ben10"}
title @s times 3 6 3

function ben10:clear_alien

tag @s[tag=omnitrix_os,scores={omnitimer=..10}] add omnitrix_os_rec
tag @s[tag=omnitrix_os,scores={omnitimer=..10}] remove omnitrix_os
tag @s[tag=broken_omnitrix_os,scores={omnitimer=..10}] add broken_omnitrix_os_rec
tag @s[tag=broken_omnitrix_os,scores={omnitimer=..10}] remove broken_omnitrix_os

execute as @s[tag=omnitrix_os,scores={update=1}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update1,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=2}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update2,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=3}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update3,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=4}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update4,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=5}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update5,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=6}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update6,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=7}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update7,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=8}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update8,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=9}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update9,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=10}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update10,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=11}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update11,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=12}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update12,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=13}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update13,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=14}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update14,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=15}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update15,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=16}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update16,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=17}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update17,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=18}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update18,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=19}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update19,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1
execute as @s[tag=omnitrix_os,scores={update=20..}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8001,Tag:omnitrix_os,Tags:update20,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1

execute as @s[tag=broken_omnitrix_os] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8040,Tag:broken_omnitrix_os,display:{Name:'{"translate":"ben10.omnitrix","color":"#a5ff45","italic":false}'}} 1

execute as @s[tag=omnitrix_os_rec] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8002,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=broken_omnitrix_os_rec] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8041,Tag:broken_omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1

execute as @s[tag=self_destruct_mode,scores={selfdestructmode=..100}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8031,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=self_destruct_mode,scores={selfdestructmode=100..999}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8032,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=self_destruct_mode,scores={selfdestructmode=1000..1999}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8033,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=self_destruct_mode,scores={selfdestructmode=2000..2999}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8034,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=self_destruct_mode,scores={selfdestructmode=3000..3999}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8035,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1
execute as @s[tag=self_destruct_mode,scores={selfdestructmode=4000..}] run item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:8031,Tag:omnitrix_os_rec,display:{Name:'{"translate":"ben10.omnitrix","color":"red","italic":false}'}} 1