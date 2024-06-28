// ポータル
HALF_BGM
STOP_LOG_RECORD_SELECTION
LOAD_BGM BGM_sinwa
IFNDEF 1 {
    1=@
}
_bgm_set=1
_bgm_replace_back=1

GREETING $1 20
WAIT 5

#MS '##'
PE ZOOM2 60

// GOTO _DEBUG
// COF2
// 1: マップでの遭遇
// 2: お買い物をした (COF0 を奇数から偶数に繰り上げ可能。)
WAIT 15
IF '(GFC[COF2]&1)==0' { // このマップで初対面である
    GFC_SET COF2 |=1
    IF 'GFC[COF0]%2==0' GFC_SET COF0 +=1
    IF GFC[COF0]'==1' { // そもそも初対面
        CHANGE_EVENT2 ___CoffeeMaker/t01
        GOTO EVENT_ENDED
    }
    IF GFC[COF0]'==3' { // 
        LABEL _DEBUG
        CHANGE_EVENT2 ___CoffeeMaker/t02
        GOTO EVENT_ENDED
    }
    IF GFC[COF0]'==5' { // 
        CHANGE_EVENT2 ___CoffeeMaker/t03
        GOTO EVENT_ENDED
    }
    IF GFC[COF0]'==7' { // 
        ITEMSTORE_RELOAD_BASIC CoffeeMaker 1
        CHANGE_EVENT2 ___CoffeeMaker/t04
        GOTO EVENT_ENDED
    }
}

IF FALSE { // イベントが終わったらここで後始末する。
    LABEL EVENT_ENDED
    _bgm_set=0
    DOTL
    PIC_HIDE n
    WAIT 25
}
IF $_bgm_set {
    REPLACE_BGM 60 0 0
}

DENY_SKIP
_foc_default=0
PE ZOOM2 60

LOG_RECORD
LABEL RESELECT
// ===== ポータルメニュー

HIDE_BLURSC
SELECTARRAY_CLEAR
SELECTARRAY &&Select_buying BUYING
SELECTARRAY &&Select_alchemy_coffee ALCHEMY
SELECTARRAY &&Select_nothanks SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== 買い物
LABEL BUYING
_foc_default=0
SHOW_BLURSC


DENY_SKIP
WAIT 20
ITEMSTORE CoffeeMaker
WAIT 8
ALLOW_SKIP

HIDE_BLURSC
GOTO RESELECT

// ===== お話
LABEL ALCHEMY
_foc_default=1
SHOW_BLURSC
DENY_SKIP
WAIT 20

ALCHEMY_COFFEEMAKER alchemy_cutin/f_primula 
IFDEF _siphon_used {
    IF $_siphon_used'>0&& ( GFC[COF2]&2 )==0 ' {
        GFC_SET COF2 |=2
        @_NPC_LOVE_UP CoffeeMaker
    }
}
WAIT 8
ALLOW_SKIP


HIDE_BLURSC
GOTO RESELECT
// ===== さよなら
LABEL SKIP
//<BREAK>
#MS_ % '##'
IF $_bgm_replace_back REPLACE_BGM 70 80 
HALF_BGM 0