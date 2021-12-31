### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# モード指定がなければdefault指定とする
execute unless data storage player_item_tuner: custom run data modify storage player_item_tuner: custom set value "default"

# エンティティ召喚
summon minecraft:armor_stand ~0.1 ~0.1 ~0.1 {Marker:true,Invisible:true,Tags:[PlayerItemTuner]}
# 初期値取得
data modify storage player_item_tuner:_ items set from storage player_item_tuner: result.items
data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
function player_item_tuner:enderchest/replace/try/enderchest/26
function player_item_tuner:enderchest/replace/try/enderchest/25
function player_item_tuner:enderchest/replace/try/enderchest/24
function player_item_tuner:enderchest/replace/try/enderchest/23
function player_item_tuner:enderchest/replace/try/enderchest/22
function player_item_tuner:enderchest/replace/try/enderchest/21
function player_item_tuner:enderchest/replace/try/enderchest/20
function player_item_tuner:enderchest/replace/try/enderchest/19
function player_item_tuner:enderchest/replace/try/enderchest/18
function player_item_tuner:enderchest/replace/try/enderchest/17
function player_item_tuner:enderchest/replace/try/enderchest/16
function player_item_tuner:enderchest/replace/try/enderchest/15
function player_item_tuner:enderchest/replace/try/enderchest/14
function player_item_tuner:enderchest/replace/try/enderchest/13
function player_item_tuner:enderchest/replace/try/enderchest/12
function player_item_tuner:enderchest/replace/try/enderchest/11
function player_item_tuner:enderchest/replace/try/enderchest/10
function player_item_tuner:enderchest/replace/try/enderchest/9
function player_item_tuner:enderchest/replace/try/enderchest/8
function player_item_tuner:enderchest/replace/try/enderchest/7
function player_item_tuner:enderchest/replace/try/enderchest/6
function player_item_tuner:enderchest/replace/try/enderchest/5
function player_item_tuner:enderchest/replace/try/enderchest/4
function player_item_tuner:enderchest/replace/try/enderchest/3
function player_item_tuner:enderchest/replace/try/enderchest/2
function player_item_tuner:enderchest/replace/try/enderchest/1
function player_item_tuner:enderchest/replace/try/enderchest/0
# エンティティ削除
kill @e[dx=0,tag=PlayerItemTuner]
# ストレージリセット
data remove storage player_item_tuner: condition
data remove storage player_item_tuner: result
data remove storage player_item_tuner: custom
