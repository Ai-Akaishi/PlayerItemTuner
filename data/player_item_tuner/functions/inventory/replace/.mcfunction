### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# モード指定がなければdefault指定とする
execute unless data storage player_item_tuner: custom run data modify storage player_item_tuner: custom set value "default"

# エンティティ召喚
summon minecraft:armor_stand ~0.1 ~0.1 ~0.1 {Marker:true,Invisible:true,Tags:[PlayerItemTuner]}
# 初期値取得
data modify storage player_item_tuner:_ items set from storage player_item_tuner: result.items
data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
function player_item_tuner:inventory/replace/try/armor/offhand
function player_item_tuner:inventory/replace/try/armor/head
function player_item_tuner:inventory/replace/try/armor/chest
function player_item_tuner:inventory/replace/try/armor/legs
function player_item_tuner:inventory/replace/try/armor/feet
function player_item_tuner:inventory/replace/try/inventory/35
function player_item_tuner:inventory/replace/try/inventory/34
function player_item_tuner:inventory/replace/try/inventory/33
function player_item_tuner:inventory/replace/try/inventory/32
function player_item_tuner:inventory/replace/try/inventory/31
function player_item_tuner:inventory/replace/try/inventory/30
function player_item_tuner:inventory/replace/try/inventory/29
function player_item_tuner:inventory/replace/try/inventory/28
function player_item_tuner:inventory/replace/try/inventory/27
function player_item_tuner:inventory/replace/try/inventory/26
function player_item_tuner:inventory/replace/try/inventory/25
function player_item_tuner:inventory/replace/try/inventory/24
function player_item_tuner:inventory/replace/try/inventory/23
function player_item_tuner:inventory/replace/try/inventory/22
function player_item_tuner:inventory/replace/try/inventory/21
function player_item_tuner:inventory/replace/try/inventory/20
function player_item_tuner:inventory/replace/try/inventory/19
function player_item_tuner:inventory/replace/try/inventory/18
function player_item_tuner:inventory/replace/try/inventory/17
function player_item_tuner:inventory/replace/try/inventory/16
function player_item_tuner:inventory/replace/try/inventory/15
function player_item_tuner:inventory/replace/try/inventory/14
function player_item_tuner:inventory/replace/try/inventory/13
function player_item_tuner:inventory/replace/try/inventory/12
function player_item_tuner:inventory/replace/try/inventory/11
function player_item_tuner:inventory/replace/try/inventory/10
function player_item_tuner:inventory/replace/try/inventory/9
function player_item_tuner:inventory/replace/try/inventory/8
function player_item_tuner:inventory/replace/try/inventory/7
function player_item_tuner:inventory/replace/try/inventory/6
function player_item_tuner:inventory/replace/try/inventory/5
function player_item_tuner:inventory/replace/try/inventory/4
function player_item_tuner:inventory/replace/try/inventory/3
function player_item_tuner:inventory/replace/try/inventory/2
function player_item_tuner:inventory/replace/try/inventory/1
function player_item_tuner:inventory/replace/try/inventory/0
# エンティティ削除
kill @e[dx=0,tag=PlayerItemTuner]
# ストレージリセット
data remove storage player_item_tuner: condition
data remove storage player_item_tuner: result
data remove storage player_item_tuner: custom
