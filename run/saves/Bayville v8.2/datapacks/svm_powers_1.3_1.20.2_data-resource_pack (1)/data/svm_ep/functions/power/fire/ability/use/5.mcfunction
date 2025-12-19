scoreboard players set @s svm_ep.using_move 450
effect give @s minecraft:slowness 1 5 true

execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.4 2

scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 70
scoreboard players set @s svm_ep.p.fire_ability_05_delay 24