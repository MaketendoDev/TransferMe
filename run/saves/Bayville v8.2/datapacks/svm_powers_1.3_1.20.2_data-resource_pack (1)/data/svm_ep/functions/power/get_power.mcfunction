title @s times 0 20 20

title @s[tag=svm_ep.phase_user] title ["",{"text":"|","color":"gray"},{"text":" Phasing ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.lightning_user] title ["",{"text":"|","color":"gray"},{"text":" Lightning ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.flora_user] title ["",{"text":"|","color":"gray"},{"text":" Flora ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.slime_user] title ["",{"text":"|","color":"gray"},{"text":" Slime ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.explosion_user] title ["",{"text":"|","color":"gray"},{"text":" Explosion ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.ice_user] title ["",{"text":"|","color":"gray"},{"text":" Ice ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.gravity_user] title ["",{"text":"|","color":"gray"},{"text":" Gravity ","color":"#F8DA5B"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.harpie_user] title ["",{"text":"|","color":"gray"},{"text":" Harpie ","color":"#abeed5"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.dimension_traveler_user] title ["",{"text":"|","color":"gray"},{"text":" Dimension Traveler ","color":"#bd6bff"},{"text":"|","color":"gray"}]
title @s[tag=svm_ep.fire_user] title ["",{"text":"|","color":"gray"},{"text":" Fire ","color":"#ff6b0a"},{"text":"|","color":"gray"}]
title @s subtitle ["",{"text":"|","color":"gray"},{"text":" U","color":"#CFCFCF"},{"text":"nlock a","color":"#DCDCDC"},{"text":"bi","color":"#EAEAEA"},{"text":"l","color":"white"},{"text":"iti","color":"#EAEAEA"},{"text":"es wit","color":"#DCDCDC"},{"text":"h ","color":"#CFCFCF"},{"text":"/","italic":true,"color":"dark_red"},{"text":"trigger svm_ep.menu","italic":true,"color":"red"},{"text":" |","color":"gray"}]

execute at @s run particle minecraft:dust 0 0 0 0.25 ~ ~1 ~ 2.5 2.5 2.5 1 35
execute at @s run particle minecraft:dust 1 0.9 0 0.5 ~ ~1 ~ 1.5 1.5 1.5 1 15
execute at @s run particle minecraft:dust 18000000 1 0 1 ~ ~1 ~ 1 1 1 1 10
execute at @s run particle minecraft:dust 18000000 18000000 0 2 ~ ~1 ~ 0.5 0.5 0.5 1 20
execute at @s run particle minecraft:flash ~ ~1 ~
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 50
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 3 40
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 6 30
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 9 20
execute at @s run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..30] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 2 1
#/loot give @s loot svm_ep:items/power_chooser