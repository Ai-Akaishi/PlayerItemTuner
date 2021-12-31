### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## storage player_item_tuner: from に元のアイテムが入っている
## storage player_item_tuner: to にアイテムを入れる

# アイテムコピー
data modify storage player_item_tuner:_ item set from storage player_item_tuner: from
# ifチェック(一致ならmismatch=false)
execute store result storage player_item_tuner:_ match byte 1 run data modify storage player_item_tuner:_ item merge from storage player_item_tuner: condition.if
execute store result storage player_item_tuner:_ match byte 1 if data storage player_item_tuner:_ {match:false}
# unlessチェック
execute if data storage player_item_tuner:_ {match:true} if data storage player_item_tuner: condition.unless store result storage player_item_tuner:_ match byte 1 run data modify storage player_item_tuner:_ item merge from storage player_item_tuner: condition.unless

# matchしていたら更新
execute if data storage player_item_tuner:_ {match:true} run function player_item_tuner:inventory/modify/default/match
