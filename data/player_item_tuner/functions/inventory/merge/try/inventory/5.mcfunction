### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

function player_item_tuner:inventory/merge/try/common
execute if data storage player_item_tuner:_ {match:true} run item modify entity @s container.5 player_item_tuner:merge
