summon minecraft:chest_minecart ~ ~ ~ {Tags:["svm_ep.tick_drop"]}
item replace entity @e[tag=svm_ep.tick_drop] container.0 from entity @s container.0
kill @e[distance=..1,tag=svm_ep.tick_drop]
kill @s