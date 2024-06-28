MSG_HIDE	  

_farm_dfmt_tired=7
_score_low=1800
_score_normal=3200
_score_div_to_count=500
_grade_normal=3

_tired_quit=0
IFNDEF _grade {
    IFDEF 2
        _grade=~$2
    ELSE 
        _grade=0
}
IFNDEF _score {
    IFDEF 1
        _score=~$1
    ELSE 
        _score=30
}

MGFARM UPDATE_RESULT
// 結果
WAIT 80


IF $_score'<=0' {
    
    GFC_SET DFMT +=1
        
    // 0ml 
    MSG	fm_01

    IF 'GFC[DFMT]>='$_farm_dfmt_tired {
        GOTO COW_TIRED
    }
    MSG	fm_02
    GOTO SELECTER

} ELSIF $_score'<'$_score_low {
    // 少ない  ======
    GFC_SET DFMT +=2
    MSG	fm_10
} ELSIF $_score'<'$_score_normal {

    IF $_grade'>='$_grade_normal {
        // 普通  ======
        GFC_SET DFMT +=2
        MSG	fm_20
    } ELSE {
        // 普通・低質  ======
        GFC_SET DFMT +=3
        MSG	fm_30
    }


} ELSE {
    IF $_grade'>='$_grade_normal {
        // 大量 ======
        GFC_SET DFMT +=2
        MSG	fm_30
    } ELSE {
        // 大量・低質
        GFC_SET DFMT +=4
        MSG	fm_40
    }
}

MGM_UI_DEACTIVATE
MSG	fm_900

_count=~$_score/$_score_div_to_count
IF $_count'<=0' 
    _count=1
IF $_count'>=8' 
    _count=8
GETITEM_BOX mtr_milk $_count $_grade 
WAIT_FN ITEMDESC

WAIT 20


IF 'GFC[DFMT]>='$_farm_dfmt_tired {
    GOTO COW_TIRED
}

// 再挑戦

MSG	fm_1000

LABEL SELECTER
MSG_HOLD


SEEK_END
// ========================
LABEL COW_TIRED
        
MSG_HIDE 
        WAIT 20
MGM_UI_DEACTIVATE
// 今日はおしまい
MSG	fm_1001
_tired_quit=1

