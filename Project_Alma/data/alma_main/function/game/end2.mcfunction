##
 # end2.mcfunction
 # 
 #
 # Created by .
##


#победа мирных

scoreboard players reset @a
team leave @a
tp @a @e[tag=lobby,limit=1]
tag @a remove player
clear @a
kill @e[tag=crossbow]
gamemode adventure @a
title @a title {"text":"Peaceful Victories","color":"green"}
effect clear @a


schedule clear alma_main:any/loop/crossbow
advancement revoke @a everything

execute at @e[tag=lobby] run summon firework_rocket ~1 ~2 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"burst",has_twinkle:1,has_trail:1,colors:[I;14188952],fade_colors:[I;11743532,5320730,15790320]},{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,12801229,15790320],fade_colors:[I;5320730,14602026,15435844]}]}}}}

execute at @e[tag=lobby] run summon firework_rocket ~-1 ~2 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"burst",has_twinkle:1,has_trail:1,colors:[I;14188952],fade_colors:[I;11743532,5320730,15790320]},{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,12801229,15790320],fade_colors:[I;5320730,14602026,15435844]}]}}}}

execute at @e[tag=lobby] run summon firework_rocket ~ ~2 ~1 {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"burst",has_twinkle:1,has_trail:1,colors:[I;14188952],fade_colors:[I;11743532,5320730,15790320]},{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,12801229,15790320],fade_colors:[I;5320730,14602026,15435844]}]}}}}

execute at @e[tag=lobby] run summon firework_rocket ~ ~2 ~-1 {LifeTime:20,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"burst",has_twinkle:1,has_trail:1,colors:[I;14188952],fade_colors:[I;11743532,5320730,15790320]},{shape:"creeper",has_twinkle:1,has_trail:1,colors:[I;4312372,12801229,15790320],fade_colors:[I;5320730,14602026,15435844]}]}}}}