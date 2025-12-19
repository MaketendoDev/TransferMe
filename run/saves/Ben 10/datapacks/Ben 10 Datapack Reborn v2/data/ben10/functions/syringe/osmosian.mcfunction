kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tag:"Syringe"}}},distance=..2,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..2,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},distance=..2,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:3b}},distance=..2,limit=1,sort=nearest]
particle minecraft:sweep_attack ~ ~0.1 ~ 0.2 0.2 0.2 1 20 force
summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8086,Tag:OsmosianDNA,display:{Name:'{"translate":"ben10.syringe.osmosian","color":"gray","italic":false}',Lore:['{"text":"R-click to use"}']}}}}
playsound minecraft:block.anvil.land ambient @a[distance=..12] ~ ~ ~ 1 2