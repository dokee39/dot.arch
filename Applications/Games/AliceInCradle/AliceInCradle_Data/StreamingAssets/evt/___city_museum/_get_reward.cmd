// 1: count
IFNDEF 1
    1=1
IFNDEF 2
    2=1000


WAIT 15
SND item_get_fanfare
GETMONEY_BOX ~$1*$2
WAIT_FN ITEMDESC
