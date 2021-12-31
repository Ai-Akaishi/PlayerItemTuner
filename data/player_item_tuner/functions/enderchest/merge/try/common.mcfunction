### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# アイテムコピー
data modify storage player_item_tuner:_ item set from storage player_item_tuner:_ items[-1]
# ifチェック(一致ならmismatch=false)
execute store result storage player_item_tuner:_ match byte 1 run data modify storage player_item_tuner:_ item merge from storage player_item_tuner: condition.if
execute store result storage player_item_tuner:_ match byte 1 if data storage player_item_tuner:_ {match:false}
# unlessチェック
execute if data storage player_item_tuner:_ {match:true} if data storage player_item_tuner: condition.unless store result storage player_item_tuner:_ match byte 1 run data modify storage player_item_tuner:_ item merge from storage player_item_tuner: condition.unless

# 次へシフト
data remove storage player_item_tuner:_ items[-1]
data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
