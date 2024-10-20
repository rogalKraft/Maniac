##
 # of.mcfunction
 # 
 #
 # Created by .
##
tellraw @a ["",{"text":"Someone broke the generator, you can fix it yourself or after 2 minutes it will turn on by i","color":"red"},{"text":"tself"}]
execute at @e[tag=generator] run playsound minecraft:item.totem.use voice @a ~ ~ ~ 4
schedule function alma_main:game/generator/m_colldown 180s

effect give @a[team=sheriff] minecraft:blindness 120 2 true
effect give @a[team=peaceful] minecraft:blindness 120 2 true
