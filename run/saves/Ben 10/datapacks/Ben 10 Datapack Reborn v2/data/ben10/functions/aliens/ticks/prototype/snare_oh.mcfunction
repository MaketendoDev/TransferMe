effect give @s night_vision 11 0 true
effect give @s speed 1 0 true
effect give @s[advancements={ben10:os/snare_oh/6=false}] resistance 1 0 true
effect give @s[advancements={ben10:os/snare_oh/6=true}] resistance 1 1 true
effect give @s[tag=Dodge] resistance 1 255 true
effect give @s jump_boost 1 0 true
effect give @s[tag=bandage_form] jump_boost 1 255 true
effect give @s regeneration 1 1 true
effect give @s water_breathing 1 0 true
effect give @s[tag=BandageGr] minecraft:slowness 1 255 true
effect give @s invisibility 1 0 true
#shoot
execute as @s[tag=!Barrage,tag=!bandage_form,tag=!BandageGr,advancements={ben10:os/snare_oh/1=true},tag=!transforming,tag=!Rshoot2,scores={rightclick=1..},nbt={SelectedItemSlot:8},predicate=!ben10:sneak] run tag @s add LongHit
scoreboard players add @s[tag=LongHit] LongHit 1
execute as @s[tag=LongHit,scores={LongHit=1}] at @s run function ben10:abilities/long_hit
execute as @s[tag=LongHit,scores={LongHit=3}] run tag @s add attack
execute as @s[tag=LongHit,scores={LongHit=15..}] run tag @s add Rshoot2
execute as @s[tag=LongHit,scores={LongHit=15..}] run tag @s remove LongHit
execute as @s[scores={LongHit=15..}] run scoreboard players reset @s LongHit
#fly
execute as @s[advancements={ben10:os/snare_oh/7=true},tag=!LongHit,tag=!transforming,predicate=ben10:sneak,nbt={SelectedItemSlot:7}] run function ben10:abilities/fly
execute as @s[nbt={OnGround:0b}] at @s unless block ~ ~ ~ #ben10:water run scoreboard players add @s fly 1
execute as @s[scores={fly=20..}] at @s run tag @s add fly
execute as @s[scores={fly=20..}] at @s run tag @s add bandage_form
execute as @s[nbt={OnGround:1b},scores={fly=1..}] at @s run scoreboard players reset @s fly
execute as @s[tag=fly,nbt={OnGround:1b}] at @s run tag @s remove bandage_form
execute as @s[tag=fly,nbt={OnGround:1b}] at @s run tag @s remove fly
#pass through block
execute as @s[advancements={ben10:os/snare_oh/3=true},predicate=ben10:sprint] rotated ~ 0 if block ^ ^ ^0.5 #ben10:pass_through run tp @s ^ ^ ^1
execute as @s[advancements={ben10:os/snare_oh/3=true},predicate=ben10:sprint] rotated ~ 0 if block ^ ^ ^0.5 #ben10:glass run tp @s ^ ^ ^1
execute as @s[advancements={ben10:os/snare_oh/3=true},predicate=ben10:sprint] rotated ~ 0 if block ^ ^ ^0.5 #minecraft:fences run tp @s ^ ^ ^1
#bandage form
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/2=true},tag=!transforming,scores={rightclick=1..},nbt={SelectedItemSlot:7},predicate=!ben10:sneak] at @s run tag @s add Rshoot
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/2=true},tag=!transforming,scores={rightclick=1..},nbt={SelectedItemSlot:7},predicate=!ben10:sneak] at @s run tag @s add bandage_form
execute as @s[tag=bandage_form,advancements={ben10:os/snare_oh/2=true},tag=!transforming,tag=!Rshoot,scores={rightclick=1..},nbt={SelectedItemSlot:7},predicate=!ben10:sneak] at @s run tag @s remove bandage_form
execute as @s[tag=!Fly,tag=bandage_form] at @s run particle dust 0.55 0.55 0.38 1 ~ ~0.2 ~ 0.4 0.2 0.4 0 50
execute as @s[predicate=ben10:sprint,tag=bandage_form] rotated ~ 0 unless block ^ ^ ^1 #ben10:passable if block ^ ^1.5 ^1 #ben10:passable run tp @s ^ ^1 ^0.5
execute as @s[tag=!swim,tag=bandage_form,predicate=ben10:sprint] rotated ~ 0 if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^ #ben10:passable unless block ^ ^1 ^1 #ben10:passable run effect give @s minecraft:resistance 1 2 true
execute as @s[tag=!swim,tag=bandage_form,predicate=ben10:sprint] rotated ~ 0 if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^ #ben10:passable unless block ^ ^1 ^1 #ben10:passable run tp @s ^ ^ ^1
#bandage
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/4=true},tag=!transforming,scores={rightclick=1..},nbt={SelectedItemSlot:8},tag=BandageGr,predicate=ben10:sneak] at @s run tag @e[distance=..20,tag=BandageG,limit=1] add pull
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/4=true},tag=!transforming,tag=!Rshoot3,scores={rightclick=1..},nbt={SelectedItemSlot:8},tag=!BandageGr,predicate=ben10:sneak] at @s run function ben10:abilities/bandage_shoot
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/4=true},tag=!transforming,scores={rightclick=1..},nbt={SelectedItemSlot:8},tag=BandageGr,predicate=!ben10:sneak] at @s run tag @s add Rshoot3
execute as @s[tag=!Barrage,tag=!bandage_form,advancements={ben10:os/snare_oh/4=true},tag=!transforming,scores={rightclick=1..},nbt={SelectedItemSlot:8},tag=BandageGr,predicate=!ben10:sneak] at @s run tag @s remove BandageGr
execute as @s[tag=BandageGr] at @s run function ben10:abilities/bandage_line
execute as @s[tag=BandageGr] at @s run tag @s add attack
execute unless entity @e[tag=BandageG,distance=..20] run tag @s remove BandageGr
execute as @s[nbt=!{SelectedItemSlot:8},tag=BandageGr] run tag @s remove BandageGr
#grab
execute as @s[tag=!Barrage,tag=!barrage_form,advancements={ben10:os/snare_oh/9=true},tag=!Rshoot2,tag=!grab,scores={rightclick=1..},nbt={SelectedItemSlot:6},predicate=!ben10:sneak] at @s if entity @e[tag=!snare_oh,distance=..10] run function ben10:abilities/stgrab
execute as @s[tag=grab] at @s run function ben10:abilities/grab

execute as @s[tag=grab,nbt=!{SelectedItemSlot:6}] at @s run tag @e[distance=..8] remove Grabbed
execute as @s[tag=grab,nbt=!{SelectedItemSlot:6}] at @s run tag @s add Rshoot2
execute as @s[tag=grab,nbt=!{SelectedItemSlot:6}] at @s run tag @s remove grab

execute as @s[tag=grab,nbt={HurtTime:9s}] at @s run tag @e[distance=..8] remove Grabbed
execute as @s[tag=grab,nbt={HurtTime:9s}] at @s run tag @s add Rshoot2
execute as @s[tag=grab,nbt={HurtTime:9s}] at @s run tag @s remove grab

execute as @s[tag=grab,scores={rightclick=1..},nbt={SelectedItemSlot:6},predicate=!ben10:sneak] at @s run tag @e[distance=..8] remove Grabbed
execute as @s[tag=grab,scores={rightclick=1..},nbt={SelectedItemSlot:6},predicate=!ben10:sneak] at @s run tag @s add Rshoot2
execute as @s[tag=grab,scores={rightclick=1..},nbt={SelectedItemSlot:6},predicate=!ben10:sneak] at @s run tag @s remove grab
execute as @e[nbt=!{HurtTime:0s},tag=Grabbed,distance=..8] at @s run tag @a[distance=..8,tag=snare_oh] add Rshoot2
execute as @e[nbt=!{HurtTime:0s},tag=Grabbed,distance=..8] at @s run tag @a[distance=..8] remove grab
execute as @e[nbt=!{HurtTime:0s},tag=Grabbed,distance=..8] at @s run tag @s remove Grabbed
#auto-dodge
execute as @s[advancements={ben10:os/snare_oh/8=true}] if entity @e[tag=!snare_oh,distance=..2] if predicate ben10:random/1 run tag @s add Dodge
execute as @s[tag=Dodge,nbt={HurtTime:9s}] at @s run particle dust 0.55 0.55 0.38 1 ~ ~1 ~ 0.4 0.6 0.4 0 50
execute as @s[tag=Dodge,nbt={HurtTime:9s}] at @s rotated ~ 0 run tp @s ^1 ^ ^
execute as @s[tag=Dodge,nbt={HurtTime:9s}] at @s run tag @s remove Dodge
#bandage-barrage
execute as @s[advancements={ben10:os/snare_oh/10=true},tag=!Rshoot3,tag=!grab,scores={rightclick=1..},nbt={SelectedItemSlot:6},predicate=ben10:sneak] at @s run function ben10:abilities/bandage_barrage
scoreboard players add @s[tag=Barrage] Barrage 1
execute as @s[tag=Barrage,scores={Barrage=1}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=4}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=7}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=10}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=13}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=16}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=19}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=22}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=25}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=28}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=31}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=34}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=37}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=40}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=43}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=46}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=49}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=52}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=55}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=58}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=61}] at @s run function ben10:abilities/bandage_barrage
execute as @s[tag=Barrage,scores={Barrage=61..}] at @s run tag @s add Rshoot3
execute as @s[tag=Barrage,scores={Barrage=61..}] at @s run tag @s remove Barrage
execute as @s[scores={Barrage=61..}] at @s run scoreboard players reset @s Barrage

execute as @s[tag=omnitrix_os] at @s run function ben10:aliens/prototype/snare_oh
execute as @s[tag=omnitrix_os_10k] at @s run function ben10:aliens/prototype/10k/snare_oh
execute as @s[tag=omnitrix_af] at @s run function ben10:aliens/prototype/snare_oh
execute as @s[tag=omnitrix_uaf] at @s run function ben10:aliens/prototype/snare_oh
execute as @s[tag=omnitrix_ov] at @s run function ben10:aliens/prototype/snare_oh

execute as @s[advancements={ben10:os/snare_oh/1=true},nbt={SelectedItemSlot:8},predicate=!ben10:sneak,tag=!BandageGr] at @s run title @s actionbar {"translate":"snare_oh.ab1","color":"#99986a","italic":false}
execute as @s[advancements={ben10:os/snare_oh/4=true},nbt={SelectedItemSlot:8},predicate=ben10:sneak,tag=!BandageGr] at @s run title @s actionbar {"translate":"snare_oh.ab4","color":"#99986a","italic":false}

execute as @s[advancements={ben10:os/snare_oh/4=true},nbt={SelectedItemSlot:8},predicate=!ben10:sneak,tag=BandageGr] at @s run title @s actionbar {"translate":"wildvine.ab12","color":"#99986a","italic":false}
execute as @s[advancements={ben10:os/snare_oh/4=true},nbt={SelectedItemSlot:8},predicate=ben10:sneak,tag=BandageGr] at @s run title @s actionbar {"translate":"wildvine.ab13","color":"#99986a","italic":false}

execute as @s[advancements={ben10:os/snare_oh/2=true},nbt={SelectedItemSlot:7},predicate=!ben10:sneak,tag=!bandage_form] at @s run title @s actionbar {"translate":"snare_oh.ab2","color":"#99986a","italic":false}
execute as @s[advancements={ben10:os/snare_oh/2=true},nbt={SelectedItemSlot:7},predicate=!ben10:sneak,tag=bandage_form] at @s run title @s actionbar {"translate":"snare_oh.ab11","color":"#99986a","italic":false}
execute as @s[advancements={ben10:os/snare_oh/7=true},nbt={SelectedItemSlot:7},predicate=ben10:sneak] at @s run title @s actionbar {"translate":"snare_oh.ab7","color":"#99986a","italic":false}

execute as @s[advancements={ben10:os/snare_oh/9=true},nbt={SelectedItemSlot:6},predicate=!ben10:sneak] at @s run title @s actionbar {"translate":"snare_oh.ab9","color":"#99986a","italic":false}
execute as @s[advancements={ben10:os/snare_oh/10=true},nbt={SelectedItemSlot:6},predicate=ben10:sneak] at @s run title @s actionbar {"translate":"snare_oh.ab10","color":"#99986a","italic":false}
