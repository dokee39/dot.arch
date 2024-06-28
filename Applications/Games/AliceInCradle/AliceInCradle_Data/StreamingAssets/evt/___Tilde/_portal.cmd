

STOP_LOG_RECORD_SELECTION
GREETING	R  20
<LOAD>
#MS '@R'
WAIT 20
TALKER d L
TALKER n R
PIC   d d1/a0L1R1__F1__m1__b1_u2_2    
PIC   n a_1/a22__F1__f1__m1__b1__u0    


GOTO LETSTALK_NOWAIT
LABEL LETSTALK
// 1を与えると会話後に戻ってこない
WAIT 10
LABEL LETSTALK_NOWAIT
_end_talk=0 
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK tilde

// 名前のはなし
_already=~SfEvt[___Tilde/d_talk_aboutmana]
SELECTARRAY &&EvTitle_AboutMana d_talk_aboutmana '' $_already

_already=~SfEvt[___Tilde/d_talk_cane]
SELECTARRAY &&EvTitle_Cane d_talk_cane '' $_already

_already=~SfEvt[___Tilde/d_talk_cooking]
SELECTARRAY &&EvTitle_Cooking d_talk_cooking '' $_already

_already0=$_already

_already=~SfEvt[___Tilde/d_talk_cooking2]
IF $_already0'||'$_already {
    SELECTARRAY &&EvTitle_Cooking2 d_talk_cooking2 '' $_already
}

_already0=$_already
_already=~SfEvt[___Tilde/d_talk_cooking3]&&GFC[TLD0]>0
IF $_already0'||'$_already {
    SELECTARRAY &&EvTitle_Cooking3 d_talk_cooking3 '' $_already
}


_already=~SfEvt[___Tilde/d_talk_stomach]
IF 'GFC[TLD0]>0||'$_already {
    SELECTARRAY &&EvTitle_StomachAndEfficient d_talk_stomach '' $_already
}


SELECTARRAY &&Cancel &&Cancel C
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    GOTO SKIP
}
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '___Tilde/'$_evt
LOG_RECORD

DOTL
IF $_end_talk {
    GOTO SKIP
}
GOTO LETSTALK
// ===== さよなら


LABEL SKIP