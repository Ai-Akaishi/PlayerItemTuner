### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

function player_item_tuner:inventory/modify/try/common

execute if data storage player_item_tuner: to run item replace entity @s container.6 from entity @e[dx=0,tag=PlayerItemTuner,limit=1] weapon.mainhand
