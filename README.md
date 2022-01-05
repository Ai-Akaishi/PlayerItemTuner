# PlayerItemTuner
Datapack to overwrite the player's items very easily.  
プレイヤーのアイテムをとても簡単に書き換えるためのデータパック

## 動作確認済みバージョン / Verified minecraft versions

- 1.18
- 1.18.1

## 使い方 / How To Use

### アイテムの大きな修正(modify)

1. 修正するアイテムを指定します。  
```nim
例）タグを持っていないオークの原木  
/data modify storage player_item_tuner: condition.if set value {id:"minecraft:oak_log"}  
/data modify storage player_item_tuner: condition.unless set value {tag:{}}
```
2. どう修正するかを指定します。  
```nim
例）アイテムを金インゴットにし、個数は維持して、タグにSpecialTag:123を設定し、他のタグは消す  
/data modify storage player_item_tuner: result.set set value {id:"minecraft:gold_ingot",tag:{SpecialTag:123}}  
  
例）アイテムを金インゴットにし、個数は維持して、タグにSpecialTag:123を追加し、他のタグは残る  
/data modify storage player_item_tuner: result.merge set value {id:"minecraft:gold_ingot",tag:{SpecialTag:123}}
```
3. 修正を適用  
```nim
例）インベントリを修正  
/function #player_item_tuner:modify/inventory  
例）エンダーチェストを修正  
/function #player_item_tuner:modify/enderchest
```

### アイテムの小さな修正(merge)
ちょっと軽いけれど、出来ることが限られます。  
アイテムの種類の変更や数の変更はできません。

1. 修正するアイテムを指定します。  
```nim
例）タグを持っていないオークの原木  
/data modify storage player_item_tuner: condition.if set value {id:"minecraft:oak_log"}  
/data modify storage player_item_tuner: condition.unless set value {tag:{}}
```
2. どう修正するかを指定します。  
```nim
例）タグにSpecialTag:123を追加し、他のタグは残る  
/data modify storage player_item_tuner: result.merge set value {tag:{SpecialTag:123}}
```
3. 修正を適用  
```nim
例）インベントリを置き換える  
/function #player_item_tuner:merge/inventory  
例）エンダーチェストを置き換える  
/function #player_item_tuner:merge/enderchest
```

### アイテムの一括置き換え(replace)
Slotが昇順になるように(但しoffhandの-106bは最後)アイテムを設定して使います。

1. 修正するアイテムを指定します。  
```nim
例）Slot:0に鉄インゴット64個、Slot:1に金インゴットを12個にする  
/data modify storage player_item_tuner: result.items set value [{id:"minecraft:iron_ingot",Count:64b,Slot:0b},{id:"minecraft:gold_ingot",Count:12b,Slot:1b}]  
例）インベントリの中身を全て指定する  
/data modify storage player_item_tuner: result.items set from entity @s Inventory  
例）エンダーチェストの中身を全て指定する  
/data modify storage player_item_tuner: result.items set from entity @s EnderItems  
```
2. アイテムが指定されてないスロットにアイテムを詰めるかどうか。  
これを指定しない場合は、指定されていないスロットのアイテムは保持される。  
```nim
例）指定していないスロットは空気にする  
/data modify storage player_item_tuner: result.fill set value {id:"minecraft:air"}  
例）指定していないスロットはりんご64個にする  
/data modify storage player_item_tuner: result.fill set value {id:"minecraft:air",Count:64b}  
```
3. 修正を適用  
```nim
例）インベントリを置き換える  
/function #player_item_tuner:replace/inventory  
例）エンダーチェストを置き換える  
/function #player_item_tuner:replace/enderchest
```

### アイテムの削除(clear)
アイテムを全て削除します。

1. 削除を適用  
```nim
例）インベントリのアイテムを削除(clearコマンドと同じ)  
/function #player_item_tuner:clear/inventory  
例）エンダーチェストをアイテムを削除  
/function #player_item_tuner:clear/enderchest
```

### アイテムのカスタム置き換え(custom)
自由に置き換え方をカスタマイズして置き換えます。  

0. カスタム置き換えから呼び出されるようにfunction tagを設定します。(準備)
```json
<YourDatapackFolder>/data/player_item_tuner/tags/functions/custom/plugins  
{
	"replace": false,
	"values": [
		"my_datapack:tune_items"
	]
}
```
1. カスタム置き換えを呼び出した場所を判別するためのプラグインタグを指定します。  
```nim
data modify storage player_item_tuner: custom set value "MyDatapack"
```
2. カスタム置き換えを呼び出します。  
```nim
function #player_item_tuner:custom/inventory
```
3. 0で指定したfunction tagが呼び出されるので、その中でプラグインタグを判別して処理します。  
```nim
<YourDatapackFolder>/data/my_datapack/functions/tune_items  
execute if data stoarge player_item_tuner: {custom:"MyDatapack"} run function my_datapack:tune_items/check
```
4. 3で呼び出されたfunction内でアイテムをチェックして、置き換えが必要なら置き換えます。  
変換前のアイテム情報が入ってます。  
data modify storage player_item_tuner: from  
変換後のアイテム情報を入れます。入れなければ元のアイテムが保持されます。  
data modify storage player_item_tuner: to  
```nim
例)スロットの番号とアイテムの個数が一致していないなら、一致させる
<my_datapack:tune_items/check>
data modify storage my_datapack: mismatch set from storage player_item_tuner: from.Slot
execute store result storage my_datapack: mismatch byte 1 run data modify storage my_datapack: mismatch set from player_item_tuner: from.Count
execute if data storage my_datapack: {mismatch:true} run data modify storage player_item_tuner: to set from storage player_item_tuner: from
execute if data storage my_datapack: {mismatch:true} run data modify storage player_item_tuner: to.Count set from storage player_item_tuner: from.Slot
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
