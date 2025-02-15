#hopper lock
execute if block ~ ~1 ~ minecraft:hopper[enabled=true] run setblock ~ ~1 ~ minecraft:hopper[enabled=false]
execute if block ~ ~-1 ~ minecraft:hopper[enabled=true] run setblock ~ ~-1 ~ minecraft:hopper[enabled=false]
#tags
scoreboard players set @s[tag=!recipe_reset] recipe_id 0
scoreboard players set @s[tag=!recipe_reset] cook_time 0
scoreboard players set @s[tag=!recipe_reset] fuel_time 0
tag @s[tag=!recipe_reset] add recipe_reset
#crafting
function aa:custom_block/tinker_table/spit
function aa:custom_block/tinker_table/crafting/selection
function aa:custom_block/tinker_table/crafting/metal
function aa:custom_block/tinker_table/crafting/count_input
function aa:custom_block/tinker_table/crafting/count_output
function aa:custom_block/tinker_table/crafting/fuel
function aa:custom_block/tinker_table/crafting/cook
#function aa:custom_block/tinker_table/crafting/calc_fuel_progress
#function aa:custom_block/tinker_table/crafting/flame
function aa:custom_block/tinker_table/crafting/arrow
#basic
execute positioned ~ ~-1 ~ if entity @e[type=glow_item_frame,tag=tube_block,tag=tube_down,dx=0] if data block ~ ~1 ~ Items[{Slot:17b}] run function aa:custom_block/tinker_table/remove_output
execute unless block ~ ~ ~ barrel[facing=down] run function aa:custom_block/tinker_table/drop