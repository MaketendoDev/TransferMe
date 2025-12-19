scoreboard players remove @s svm_ep.mana 20
scoreboard players set @s svm_ep.using_move 550
scoreboard players add @s svm_ep.used_move 250
scoreboard players set @s svm_ep.p.flora_ability_11_delay 10
execute at @s run playsound minecraft:block.grass.break master @a[distance=..20] ~ ~ ~ 2 0
execute at @s run playsound minecraft:block.grass.place master @a[distance=..20] ~ ~ ~ 2 0
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..20] ~ ~ ~ 1 1.5