execute as @s[tag=ShockWave] run scoreboard players add @s Shockwave 1
execute as @s[tag=ShockWave,scores={Shockwave=20..}] run kill @s
execute as @s[tag=FireShoot] run function ben10:abilities/ticks/fire_shoot
execute as @s[tag=FireSpears] run function ben10:abilities/ticks/fire_spears
execute as @s[tag=FireBreath] run function ben10:abilities/ticks/fire_breath
execute as @s[tag=RisingShoot] run function ben10:abilities/ticks/rising_shoot
execute as @s[tag=FireBigShoot] run function ben10:abilities/ticks/fire_big_shoot
execute as @s[tag=QuillsShoot] run function ben10:abilities/ticks/quills_shoot
execute as @s[tag=Sense] run function ben10:abilities/ticks/sense
execute as @s[tag=CrystalShoot] run function ben10:abilities/ticks/crystal_shoot
execute as @s[tag=BrightShoot] run function ben10:abilities/ticks/bright_shoot
execute as @s[tag=SpikyLine] run function ben10:abilities/ticks/spiky_line
execute as @s[tag=SpikyCircle] run function ben10:abilities/ticks/spiky_circle
execute as @s[tag=SonicClap] run function ben10:abilities/ticks/sonic_clap
execute as @s[tag=SmashGround] run function ben10:abilities/ticks/smash_ground
execute as @s[tag=Throw] run function ben10:abilities/ticks/throw
execute as @s[tag=NullVoidShoot] run function ben10:abilities/ticks/null_void_shoot
execute as @s[tag=DirtBarrage] run function ben10:abilities/ticks/dirt_barrage
execute as @s[tag=VineShoot] run function ben10:abilities/ticks/vine_shoot
execute as @s[tag=VineCircle] run function ben10:abilities/ticks/vines_circle
execute as @s[tag=FlyTrap] run function ben10:abilities/ticks/fly_trap
execute as @s[tag=BandageShoot] run function ben10:abilities/ticks/bandage_shoot
execute as @s[tag=ditto_clone_] unless entity @e[type=wolf,tag=ditto_clone,distance=..0.7] run kill @s
execute as @s[tag=DittoLadder] run function ben10:abilities/ticks/ditto_ladder
execute as @s[tag=EyeBeam] run function ben10:abilities/ticks/eye_beam
execute as @s[tag=EyeStrongBeam] run function ben10:abilities/ticks/eye_strong_beam
execute as @s[tag=EyeSpiral] run function ben10:abilities/ticks/eye_spiral
execute as @s[tag=Smash] run function ben10:abilities/ticks/smash
execute as @s[tag=BlasterShoot] run function ben10:abilities/ticks/blaster_shoot
execute as @s[tag=SlimeShoot] run function ben10:abilities/ticks/slime_shoot
execute as @s[tag=UpgradeShoot] run function ben10:abilities/ticks/upgrade_shoot
execute as @s[tag=FPodsShoot] run function ben10:abilities/ticks/fruit_pods_shoot
execute as @s[tag=SonicHowls] run function ben10:abilities/ticks/sonic_howls
execute as @s[tag=BarrageShoot] run function ben10:abilities/ticks/bandage_barrage
execute as @s[tag=PullShoot] run function ben10:abilities/ticks/pull
execute as @s[tag=UpchuckShoot] run function ben10:abilities/ticks/upchuck_shoot
execute as @s[tag=UpchuckSpit] run function ben10:abilities/ticks/upchuck_spit
execute as @s[tag=WayShoot] run function ben10:abilities/ticks/way_shoot
execute as @s[tag=WaterShoot] run function ben10:abilities/ticks/water_shoot
execute as @s[tag=GhostTentacle] run function ben10:abilities/ticks/tentacle
execute as @s[tag=GhostPush] run function ben10:abilities/ticks/ghost_push
execute as @s[tag=ElectricBeam] run function ben10:abilities/ticks/electric_beam
execute as @s[tag=ElectricWave] run function ben10:abilities/ticks/electric_wave
execute as @s[tag=Electrokinesis] run function ben10:abilities/ticks/electrokinesis
execute as @s[tag=Lightbolt] run function ben10:abilities/ticks/lightbolt
execute as @e[tag=ElecP] run function ben10:abilities/ticks/electric_player
execute as @e[tag=VineG] run function ben10:abilities/vineg
execute as @e[tag=BandageG] run function ben10:abilities/bandageg
execute as @e[tag=FLifting] run function ben10:abilities/ticks/lifting
execute as @e[tag=UpchuckG] run function ben10:abilities/upchuckg
execute as @s[tag=EnergyShoot] run function ben10:abilities/ticks/energy_shoot
execute as @s[tag=ElectricShoot] run function ben10:abilities/ticks/electric_shoot
execute as @s[tag=MagShoot] run function ben10:abilities/ticks/magnetism
execute as @s[tag=LShoot] run function ben10:abilities/ticks/laser_shoot
execute as @s[tag=Spawner] run function ben10:mobs/ticks/spawner
execute as @s[tag=IceRain] run function ben10:abilities/ticks/rain

execute as @s[tag=meteor] run function ben10:omnitrix/capsule_ticks
execute as @s[tag=capsule] run function ben10:omnitrix/capsule_ticks

#diamondhead
execute as @s[tag=diamondstand2] run scoreboard players add @s diamond_wall 1
execute as @s[tag=diamondstand2,scores={diamond_wall=350..}] run fill ~3 ~4 ~3 ~-3 ~-2 ~-3 air replace prismarine_bricks
execute as @s[tag=diamondstand2,scores={diamond_wall=350..}] run kill @s

execute as @s[tag=diamondstand] run scoreboard players add @s diamond_stand 1
execute as @s[tag=!ice,tag=diamondstand,scores={diamond_stand=200..}] run fill ~2 ~2 ~-2 ~-2 ~-2 ~2 air replace prismarine_bricks
execute as @s[tag=!ice,tag=diamondstand,scores={diamond_stand=200..}] run kill @s
execute as @s[tag=ice,tag=diamondstand,scores={diamond_stand=60..}] run fill ~2 ~2 ~-2 ~-2 ~-2 ~2 air replace ice
execute as @s[tag=ice,tag=diamondstand,scores={diamond_stand=60..}] run kill @s

#greymatter
item replace entity @s[tag=mine] armor.head with minecraft:player_head{Tag:item,display:{Name:"{\"text\":\"Bomb\"}"},SkullOwner:{Id:[I;-1953510240,1753235720,-1536533983,839781756],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGRhMzMyYWJkZTMzM2ExNWE2YzZmY2ZlY2E4M2YwMTU5ZWE5NGI2OGU4ZjI3NGJhZmMwNDg5MmI2ZGJmYyJ9fX0="}]}}} 1
execute as @s[tag=mine] run execute as @e[type=!armor_stand,tag=!greymatter] at @s[distance=..1.9] run summon minecraft:creeper ~ ~1 ~ {Fuse:0,ExplosionRadius:1b}
execute as @s[tag=mine] run execute as @s at @e[type=!armor_stand,tag=!greymatter] at @s[distance=..1.9] run kill @s