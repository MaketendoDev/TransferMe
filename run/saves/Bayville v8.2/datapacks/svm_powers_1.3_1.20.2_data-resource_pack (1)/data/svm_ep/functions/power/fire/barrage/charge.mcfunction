scoreboard players remove @s svm_ep.mana 4
scoreboard players add @s svm_ep.p.fire_barrage_bullets 1
scoreboard players operation @s svm_ep.p.fire_barrage_charge -= @s svm_ep.p.fire_barrage_charge_max
scoreboard players remove @s[scores={svm_ep.p.fire_barrage_charge_max=1..}] svm_ep.p.fire_barrage_charge_max 3
scoreboard players add @s svm_ep.used_move 10
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.5 1.5
title @s title ["",{"text":"|","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.fire_barrage_bullets"},"color":"#F86900"},{"text":"|","bold":true,"color":"gray"}]
