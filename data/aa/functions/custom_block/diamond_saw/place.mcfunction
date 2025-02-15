execute unless block ~ ~ ~ #aa:fluid run summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:axolotl_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Diamond-tipped Sawmill","italic":false}'},CustomModelData:3112000,EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Radius:0f,Age:1,Tags:["saw","aa_block","aa_block_init"]}}}}
execute unless block ~ ~ ~ #aa:fluid run kill @s
execute if block ~ ~ ~ #aa:fluid run tag @s[tag=aa_block_init] add valid_aa_block_place
execute as @s[tag=aa_block_init,tag=valid_aa_block_place] run playsound block.copper.place block @a
execute as @s[tag=aa_block_init,tag=valid_aa_block_place] run setblock ~ ~ ~ stone_slab
execute as @s[tag=aa_block_init,tag=valid_aa_block_place] run summon glow_item_frame ~ ~ ~ {CustomNameVisible:0b,Facing:1b,ItemRotation:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["saw_block","custom_block"],Item:{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:3112000}}}
#add direction tag
execute if entity @p[y_rotation=-135..-45] run tag @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest] add saw_E
execute if entity @p[y_rotation=-45..44] run tag @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest] add saw_N
execute if entity @p[y_rotation=45..134] run tag @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest] add saw_E
execute if entity @p[y_rotation=135..-134] run tag @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest] add saw_N
#add direction visual
data merge entity @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest,tag=saw_N] {ItemRotation:4b}
data merge entity @e[type=glow_item_frame,tag=saw_block,limit=1,sort=nearest,tag=saw_E] {ItemRotation:6b}
kill @s