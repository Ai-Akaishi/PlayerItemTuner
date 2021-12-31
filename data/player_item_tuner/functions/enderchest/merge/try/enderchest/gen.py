#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs

for i in range(27):
    with codecs.open(os.path.join(os.path.dirname(__file__), str(i) + '.mcfunction'), 'w', 'utf_8') as f:
        command = '''### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

function player_item_tuner:enderchest/merge/try/common
execute if data storage player_item_tuner:_ {match:true} run item modify entity @s enderchest.''' + str(i) + ''' player_item_tuner:merge
'''
        f.write(command)
