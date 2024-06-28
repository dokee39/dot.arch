GREETING R -10
WAIT 20
_foc_index=0

LABEL _RESELECT 
SELECTARRAY_CLEAR

SELECTARRAY &&Select_switch_old_portrait _BATTLE_OLD '' ~GFB[REPLACE_BATTLE_PICTURE_OLD]
SELECTARRAY &&Cancel _SKIP c
SELECT_FOCUS	 $_foc_index

SELECT -1

// ================================================
LABEL _BATTLE_OLD
_foc_index=0
IF GFB[REPLACE_BATTLE_PICTURE_OLD]
    GFB_SET REPLACE_BATTLE_PICTURE_OLD 0
ELSE 
    GFB_SET REPLACE_BATTLE_PICTURE_OLD 1
SVT_FLUSH stand_battle

GOTO _RESELECT
// ================================================


LABEL _SKIP