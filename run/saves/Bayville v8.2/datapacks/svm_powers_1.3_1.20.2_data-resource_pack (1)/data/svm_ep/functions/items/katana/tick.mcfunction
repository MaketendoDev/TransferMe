execute as @s[nbt={SelectedItem:{tag:{svm_ep.katana:1b}}}] unless score @s svm_ep.holding_katana matches 1 unless score @s svm_ep.holding_katana matches 3 run function svm_ep:items/katana/activate_mainhand
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{svm_ep.katana:1b}}]}] unless score @s svm_ep.holding_katana matches 2..3 run function svm_ep:items/katana/activate_offhand
execute as @s[nbt={SelectedItem:{tag:{svm_ep.katana:1b}}},scores={svm_ep.holding_katana=2}] run scoreboard players set @s svm_ep.holding_katana 3

execute as @s[scores={svm_ep.holding_katana=1}] unless entity @s[nbt={SelectedItem:{tag:{svm_ep.katana:1b}}}] run function svm_ep:items/katana/put_away
execute as @s[scores={svm_ep.holding_katana=2}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{svm_ep.katana:1b}}]}] run function svm_ep:items/katana/put_away
execute as @s[scores={svm_ep.holding_katana=3}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{svm_ep.katana:1b}}]}] run scoreboard players set @s svm_ep.holding_katana 1
execute as @s[scores={svm_ep.holding_katana=3}] unless entity @s[nbt={SelectedItem:{tag:{svm_ep.katana:1b}}}] run scoreboard players set @s svm_ep.holding_katana 2
