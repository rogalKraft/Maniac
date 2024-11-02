# счетчики игрков
function alma_main:any/player
function alma_main:roles/itemrolback/murderer
function alma_main:roles/itemrolback/crossbow
function alma_main:game/generator/repairscor
# лобби
execute at @e[type=marker,tag=lobby] as @a[distance=..6.5,tag=!player] run function alma_main:any/plon
execute at @e[type=marker,tag=lobby] as @a[distance=7..10,tag=player] run function alma_main:any/ploff
execute at @e[type=marker,tag=lobby] as @a[distance=10.1..12,team= spectr] run tp @s @e[limit=1 , tag=spawn]
# роли
attribute @r[tag=player] minecraft:generic.attack_damage base set 0
gamemode adventure @a[tag=!player]

# победы смерти
execute as @a[ team=peaceful , scores={deth_s=1..}] run function alma_main:roles/rules/deth
execute as @a[ team=murderer , scores={deth_s=1..}] run function alma_main:game/end2
execute if score @a[team=murderer, limit= 1] mkill >= *game Player run function alma_main:game/end

# подбор арбалета

execute at @e[type=minecraft:item_display,tag=crossbow] as @a[distance=..2,team=peaceful] run scoreboard players add @s crossbowpikup 2 



execute at @e[type=marker,tag=lobby] as @a[distance=7..10,tag=player] run effect give @a minecraft:regeneration 5 5 true
execute at @e[type=marker,tag=lobby] as @a[distance=7..10,tag=player] run effect give @a minecraft:saturation 5 5 true
