##
 # sheriffkillpeaceful.mcfunction
 # 
 #
 # Created by .
##
summon minecraft:item_display ~ ~ ~ {item: {count: 1, id: "minecraft:crossbow"}, transformation: {left_rotation: [0.69121534f, -0.06907906f, 0.0665316f, 0.7162562f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 1.0000002f, 1.0000002f], translation: [0.0f, 0.0f, 0.0f]}, Tags: ["crossbow"]}

kill @s 
team join spectr @s
scoreboard players reset @s deth_s
gamemode spectator @a[team=spectr]
clear @s
advancement revoke @s from alma_main:sheriff

scoreboard players operation *game Player -= *calc1 Player