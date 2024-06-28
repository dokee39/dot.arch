


HKDS	dj C @R
TALKER_REPLACE	dj dojo_teacher talk_mob_m1

HKDS	djt RTT @R TT
TALKER_REPLACE	djt dojo_teacher talk_mob_m1
MG_DOJO CREATE
// 
MSG ___dojo/mg__portal*dj_01

DENY_MSGLOG


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

STOP_BGM	150 1
ALLOW_MSGLOG