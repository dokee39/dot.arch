// ポータル
HALF_BGM
STOP_LOG_RECORD_SELECTION
LOAD_BGM BGM_shopping
IFNDEF 1 {
    1=@
}
_bgm_set=1
_bgm_replace_back=1

GREETING $1 20
<LOAD>
WAIT 5

#MS '@#[%] P[stand] w30 @#[%] w20 @#[%]'

WAIT 15
IF GFC[NIG3]'==0' { // このマップで初対面である
    GFC_SET NIG3 1
    IF '(GFC[NIG2]&1)==0' {
        GFC_SET NIG1 +=1
        GFC_SET NIG2 GFC[NIG2]|1
    }
    IF GFC[NIG0]'==0' { // そもそも初対面
        GFC_SET_MX NIG0 1
        CHANGE_EVENT2 ___Nightingale/t01
        GOTO EVENT_ENDED
    }
}
IF 'GFC[NIG1]>=2 && SfEvt[___Nightingale/t_talk_nusi]==0&&(PVV==104&&GFC[IXA1]>0)' {
    // ヌシ戦アナウンス
    _bgm_set=0
    _bgm_replace_back=0
    CHANGE_EVENT2 ___Nightingale/t_talk_nusi
    GOTO EVENT_ENDED
}
IF 'SfEvt[___Nightingale/t_talk_hpred]==0&&(SerHas[HP_REDUCE]||noel_torned)' {
    // Hp低下
    TL 60 REPLACE_BGM 60 0 0
    _bgm_set=0
    CHANGE_EVENT2 ___Nightingale/t_talk_hpred
    GOTO EVENT_ENDED
}

IF FALSE { // イベントが終わったらここで後始末する。
    LABEL EVENT_ENDED
    DOTL
    HIDE_BLURSC
    PIC_HIDE t
    PIC_HIDE n
    WAIT 25
}
IF $_bgm_set {
    REPLACE_BGM 60 0 0
}

DENY_SKIP
_foc_default=0
PE ZOOM2 60
#MS_ Nightingale '## P[open_store]'

LOG_RECORD
LABEL RESELECT
// ===== ポータルメニュー
TALKER n L
TALKER t R
PIC   t t/a0L2R1__F1__m2_u1__m2_b1    
PIC   n a_1/a22__F1__f1__m1__b1__u0    

HIDE_BLURSC
SELECTARRAY_CLEAR
SELECTARRAY &&Select_buying BUYING
SELECTARRAY &&Select_talk LETSTALK
SELECTARRAY &&Select_nothanks SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== 買い物
LABEL BUYING
_foc_default=0
SHOW_BLURSC
PIC_HIDE n
PIC   t t/a0L3R1__F1__m4_u1__m3_b1    

TALKER t RR
DENY_SKIP
WAIT 20
ITEMSTORE Night CL
WAIT 8
ALLOW_SKIP

HIDE_BLURSC
GOTO RESELECT

// ===== お話
LABEL LETSTALK
_foc_default=1
WAIT 15
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK night

// 名前のはなし
_already=~SfEvt[___Nightingale/t_talk00]
SELECTARRAY &&EvTitle_YourName t_talk00 '' $_already

_already=~SfEvt[___Nightingale/t_talk01]
IF GFC[NIG1]'>=2 ||'$_already {
    SELECTARRAY &&EvTitle_ReasonForMoving t_talk01 '' $_already
}
_already=~SfEvt[___Nightingale/t_talk02]
IF GFC[NIG1]'>=3 ||'$_already {
    SELECTARRAY &&EvTitle_Wanted t_talk02 '' $_already
}

_already=~SfEvt[___Nightingale/t_talk_hpred]
IF '(SerHas[HP_REDUCE]||noel_torned) ||'$_already {
    SELECTARRAY &&EvTitle_hp_red t_talk_hpred '' $_already
}
_already=~SfEvt[___Nightingale/t_talk_nusi]
IF '(PVV==104&&GFC[IXA1]>0) ||'$_already {
    SELECTARRAY &&EvTitle_nusi t_talk_nusi '' $_already
}


SELECTARRAY &&Cancel &&Cancel C
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    GOTO RESELECT
}

SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '___Nightingale/'$_evt
LOG_RECORD


DOTL
GOTO LETSTALK
// ===== さよなら
LABEL SKIP
//<BREAK>
#MS 'q P[stand]'
#MS_ % '##'
IF $_bgm_replace_back REPLACE_BGM 70 80 
HALF_BGM 0