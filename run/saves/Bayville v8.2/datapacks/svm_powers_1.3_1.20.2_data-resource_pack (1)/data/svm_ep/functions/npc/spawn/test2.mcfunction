data merge entity @s {Silent:1b,Tags:["svm_ep.npc","svm_ep.npc_test2"],Health:20,CanPickUpLoot:0b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Duration:"infinite",ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20f}]}

function svm_ep:system/new_entity
execute at @s run function svm_ep:npc/test2/summon_aj

item replace entity @s weapon with air