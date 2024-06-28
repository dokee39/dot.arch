

GREETING	R  30
<LOAD>
WAIT 20

DENY_SKIP
_foc_default=0


LABEL RESELECT
// ===== ポータルメニュー
STOP_LOG_RECORD_SELECTION
TALKER v L
TALKER n R
PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   v v/a11__F1__m1__b2_u0    

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

TALKER v RR
PIC   v v/a12__F1__m1__b2_ua    
DENY_SKIP
WAIT 20
ITEMSTORE Laevi CL
WAIT 8
ALLOW_SKIP
HIDE_BLURSC
GOTO RESELECT

// ===== お話

LABEL LETSTALK
// 1を与えると会話後に戻ってこない
WAIT 10
LABEL LETSTALK_NOWAIT
_foc_default=1
_end_talk=0 

SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK laevi

// 名前のはなし
_already=~SfEvt[___Laevi/v_talk_homeroad]
SELECTARRAY &&EvTitle_HomeRoad v_talk_homeroad '' $_already
_already=~SfEvt[___Laevi/v_talk_forestroad]
SELECTARRAY &&EvTitle_ForestRoad v_talk_forestroad '' $_already

_already=~SfEvt[___Laevi/v_talk_village]
SELECTARRAY &&EvTitle_Village v_talk_village '' $_already

_already=~SfEvt[___Laevi/v_talk_mtr_quality]
SELECTARRAY &&EvTitle_MtrQuality v_talk_mtr_quality '' $_already

IF $_already {
    _already=~SfEvt[___Laevi/v_talk_dangerousness]
    SELECTARRAY &&EvTitle_Dangerousness v_talk_dangerousness '' $_already
    IF $_already {
        _already=~SfEvt[___Laevi/v_talk_battle_reward]
        SELECTARRAY &&EvTitle_BattleReward v_talk_battle_reward '' $_already
        _already=~SfEvt[___Laevi/v_talk_weather]
        SELECTARRAY &&EvTitle_Weather v_talk_weather '' $_already
    }
   
}
_already=~SfEvt[___Laevi/v_talk_pvv102_quake]
IF '(PVV>=102&&PVV<200)||'$_already {
    SELECTARRAY &&EvTitle_Quake v_talk_pvv102_quake '' $_already
    IF $_already {
        _already=~SfEvt[___Laevi/v_talk_pvv102_memory]
        SELECTARRAY &&EvTitle_Memory v_talk_pvv102_memory '' $_already
        IF $_already {
            _already=~SfEvt[___Laevi/v_talk_pvv102_sell]
            SELECTARRAY &&EvTitle_Sell v_talk_pvv102_sell '' $_already

        }

    }
}

SELECTARRAY &&Cancel  
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    GOTO RESELECT
}
ALLOW_SKIP
SELECT_RESULT_TO_LOG
CHANGE_EVENT2 '___Laevi/'$_evt
LOG_RECORD

DOTL
IF $_end_talk {
    GOTO SKIP
}
GOTO LETSTALK
// ===== さよなら


LABEL SKIP

