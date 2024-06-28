
IF 'BGM_VOL==0' {
    _result=1
    CHANGE_EVENT2	___dojo/v_talk_study_error_bgm
    IF $_result'==0' {
        _stop_dojo=1
        SEEK_END
    }
    
}


IF '!'$__cloth_changed {
    _talk=0
    IF '(GFC[DJO0]&4)==0' {
        GFC_SET DJO0 |=4
        _talk=1
    }
    CHANGE_EVENT2	___dojo/v_talk_study_first $_talk
} ELSE {
    SHOW_BLURSC
}
WAIT 40

<LOAD>

STOP_BGM	140 0


HKDS	dj C @R
TALKER_REPLACE	dj dojo_teacher talk_mob_m6

HKDS	djt RTT @R TT
TALKER_REPLACE	djt dojo_teacher talk_mob_m6
MG_DOJO CREATE
// 
MSG ___dojo/mg__portal*dj_01

DENY_MSGLOG
// ========================

LABEL _MENU
MSG_HIDE
WAIT 20
MG_DOJO MENU

IFSTR $_result  IS '_cancel' {
    WAIT 20
    GOTO _SKIP
} ELSE {
    WAIT 25
    DENY_SKIP
    _skill_key=$_result
    MG_DOJO INITG $_skill_key
    IFSTR $_skill_key IS '_tuto' {
        CHANGE_EVENT2	___dojo/mg_tuto
    } ELSE {
        CHANGE_EVENT2	___dojo/mg_main
    }
    DENY_SKIP
    MG_DOJO CLOSEG
    WAIT 60
    GOTO _MENU
}

LABEL _SKIP
MG_DOJO CLOSE
WAIT 30

LOAD_BGM BGM_ChipBattle
STOP_BGM	150 1
ALLOW_MSGLOG
// ========================

HIDE_BLURSC
WAIT 40
REPLACE_BGM	50 40 0
WAIT 20