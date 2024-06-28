#SND_LOAD ev_city
#SND_LOAD ev_grazia_dojo
LOAD_BGM BGM_ChipBattle
STOP_LOG_RECORD_SELECTION
TALKER_REPLACE	dj dojo_teacher talk_mob_m6

// 1: skip first 

IFNDEF 1
    1=0


__cloth_changed=0

#< sihan >

// flag DJO 0 bit
// 1: 初回
// ↓　ここから戦闘時クリア
// 2: 最初に話しかける
// 4: 最初に稽古開始

GREETING	L  40
<LOAD>
PE ZOOM2 60
#MS '##'

IF 'GFC[DJO0]==0' {
    CHANGE_EVENT2 ___dojo/t01
    GFC_SET DJO0 1
} ELSE {
    REPLACE_BGM	70 35 0
    WAIT 25
}
IF '(GFC[DJO0]&2)==0' {
    GFC_SET DJO0 |=2

    PE ZOOM2_EATEN 1
    PIC_RADIATION #4 ff:#F7AA47
    PIC_FLASH	&9 0 6 20 ff:#F7AA47
    SND dojo_katsu
    QU_VIB 20 25 8
    #MS 'P[punch]'
    HKDS dj 'BB' '#<sihan>'　

    MSG	___dojo/t01*dj_20

    PE ZOOM2_EATEN 60
    PE ZOOM2_EATEN -1
}


DENY_SKIP
_foc_default=0


LABEL RESELECT
// ===== ポータルメニュー
STOP_LOG_RECORD_SELECTION



SELECTARRAY_CLEAR
SELECTARRAY &&Select_dojo_study EXECUTE
SELECTARRAY &&Select_talk LETSTALK
SELECTARRAY &&Select_nothanks SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== 稽古開始！
LABEL EXECUTE
PIC_HIDE #4
_foc_default=0
// PIC_HIDE n

// TALKER v RR
// PIC   v v/a12__F1__m1__b2_ua    
 DENY_SKIP
 WAIT 20
_stop_dojo=0

CHANGE_EVENT2 ___dojo/_main_study
IF $_stop_dojo'==1'
    GOTO SKIP
// ITEMSTORE Laevi CL
// WAIT 8
// ALLOW_SKIP
GOTO RESELECT

// ========================================================
// MARK : お話
// ========================================================

LABEL LETSTALK
PIC_HIDE_ALL	 
// 1を与えると会話後に戻ってこない
WAIT 10
LABEL LETSTALK_NOWAIT
_foc_default=1
_end_talk=0 

SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK laevi

// 名前のはなし
_already=~SfEvt[___dojo/v_talk_statue]
SELECTARRAY &&EvTitle_dojo_statue v_talk_statue '' $_already
_already=~SfEvt[___dojo/v_talk_cap]
SELECTARRAY &&EvTitle_dojo_cap v_talk_cap '' $_already


SELECTARRAY &&Cancel  
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    GOTO RESELECT
}
ALLOW_SKIP
#MS_ 'sihan' 'P[fold]'
SELECT_RESULT_TO_LOG
CHANGE_EVENT2 '___dojo/'$_evt
LOG_RECORD

DOTL
IF $_end_talk {
    GOTO SKIP
}
GOTO LETSTALK
// ===== さよなら


LABEL SKIP


#MS_ 'sihan' 'P[fold]'

PE ZOOM2 -1
IF $__cloth_changed {
    // 着替えている
    #< % >
    #MS '## w10 P[walk] >+[-80,0 :70] P[stand]'
    STOP_BGM	140 1
    PIC_FILL	&9 DARK 
    PIC_FADEIN  &9 50
    WAIT 60
    DENY_SKIP
    SND cloth_dojo_on
    WAIT 180
    PIC_FADEOUT  &9 50
    #< % >
    PR_OUTFIT NORMAL
    ALLOW_SKIP
    #MS 'P[walk] >+[20,0 ] >+[60,0 :60] P[stand_ev]'
    WAIT_MOVE
    LOAD_BGM BGM_title grazia
    REPLACE_BGM	0 40 1
    EPSITU_FLUSH
} ELSE {
    REPLACE_BGM	60 100 1
}
