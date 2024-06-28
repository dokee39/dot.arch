IFNDEF __aloma_fined {
    __aloma_fined=1
    TRM_FINE
}

IF 'GFC[TRM0]==0' {
    // サンプルアイテム
    GFC_SET	TRM0 1

    
    WAIT 10
    GETITEM  mtr_sage 1 0
    GETITEM  mtr_coal0 1 0
    GETITEM  mtr_weed0 1 0

    WAIT 40
}
// ========================
IFNDEF trm_activated trm_activated=0
IFNDEF trm_tuto_watched {
    IF 'GFC[TRM0]<2' {
        trm_tuto_watched=0
    } ELSE {
        trm_tuto_watched=1
    }
}


#SND_LOAD ev_trm
GREETING	L -40

IF $trm_activated {
    // 再度アクセスできるようにする
    DENY_SKIP
    PIC_FILL	&9 DARK
    PIC_FADEIN	&9 60
    WAIT 70
    LP_DEACTIVATE_TO_CHIP	Ev..Ev_aloma
    LP_DEACTIVATE_TO_CHIP	Ev..Ev_laevi
    PIC_FADEOUT	&9 67
    WAIT 50
    trm_activated=0
    #CHECK_DESC_KEY EV_access_theroom_aloma
}
IF 0 {
    // skip alchemy scene
    _result=1
    _episode=first_play
    GOTO _DEBUG
}

IF $trm_tuto_watched {
    ALCHEMY_TRM alchemy_cutin/f_trm
} ELSE {
    CHANGE_EVENT2	___Laevi/trm__aloma_tuto
    
}

IF $_result'<0' SEEK_END
// $_episode に見るエピソードが入ってる
// ========================
LABEL _DEBUG
LP_ACTIVATE_TO_CHIP	Ev..Ev_aloma
// 実行
DENY_SKIP

trm_activated=1
WAIT 20
STOP_BGM	90 0

#MS_ % '>+[100,0 :120]'

WAIT 40
PIC_FILL	&9 DARK
PIC_FADEIN	&9 40
WAIT 40


WAIT_MOVE
LP_ACTIVATE_TO_CHIP	Ev..Ev_laevi
#CHECK_DESC_KEY EV_access_next_customer

PIC_FADEOUT	&9 20
UI_DISABLE
TITLECALL_HIDE 1

// PIC_FILL	#9 DARK
// エピソード実行 ========================
IFSTR $_episode IS 'first_play' {
    IF $_result'==1' 
        FATAL troom_01a 1
    ELSE 
        FATAL troom_01b 1
}



PIC_FILL	&9 DARK
PIC_FADEOUT	&9 30
WAIT 10
UI_ENABLE
#MS_ % '>+[-65,0 :80]'
// PIC_FADEOUT	&9 50
ALLOW_SKIP



// 終了処理
IFSTR $_episode IS 'first_play' {
    IF 'GFC[TRM0]<2' {
        WAIT 40
        START_BGM	90
        CHANGE_EVENT2	___Laevi/trm_009
    }
}
PIC_HIDE_ALL	    

WAIT_MOVE
START_BGM	90

GET_TRM_REWARD_BOX 
WAIT_FN ITEMDESC
IFDEF _reward {
    IF $_reward'>0' {
        GETMONEY $_reward
    }
}