_farm_dfmt_tired=7

IFDEF farmgame {
    SEEK_END
}


TALKER_REPLACE	fm dairy_farmer talk_mob_m3




__cloth_changed=0


// flag DFM 0 bit
// 1: 初回


GREETING	L  30
#< farmer >
<LOAD>
PE ZOOM2 60
#MS '## w30 @#[%] w30 @#[%] '

IF 'GFC[DFM0]==0' {
    CHANGE_EVENT2 ___city_farm/t01
    GFC_SET DFM0 1
}

IF 'GFC[DFMT]>='$_farm_dfmt_tired {
    PE ZOOM2 -1
    HKDS	fm RT #<farmer>
    MSG	___city_farm/_game_result*fm_1001
    GOTO _SKIP
}
 

DENY_SKIP
_foc_default=0


LABEL RESELECT
// ===== ポータルメニュー
LOG_RECORD

HKDS	fm RT #<farmer>

MTL MSG_SKIPHOLD 
MSG fm_01



SELECTARRAY_CLEAR
SELECTARRAY &&Select_do_farming EXECUTE
SELECTARRAY &&Select_check_rule CHECKRULE
SELECTARRAY &&Select_nothanks _SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== ゲーム開始！
LABEL EXECUTE
MSG_HIDE	  
CHANGE_EVENT2 ___city_farm/_game
IFSTR $_result IS '_SKIP' {
    CHANGE_EVENT2	___city_farm/_game_quit
    
}

SEEK_END

// ========================================================
// MARK : お話
// ========================================================

LABEL CHECKRULE
PIC_HIDE_ALL	 
MSG_HIDE	  

CHANGE_EVENT2 ___city_farm/_rule
LOG_RECORD

GOTO RESELECT
// ===== さよなら


LABEL _SKIP
MSG_HIDE	  

#< % >
#MS '##'