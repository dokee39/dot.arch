// オストレア

IF 'GFC[WLR1]==0' {
    // 岩破壊後話しかけていない
    CHANGE_EVENT ___city/bar_w_portal
}

GREETING	L 20
#MS '@#[%::48]'

WAIT 20

_already_4ascend=0
TALKER	s R     
TALKER	n L     

IF 'GFC[WLR_G]&8==0' {
    GFC_SET WLR_G |=8
    CHANGE_EVENT2	___city/bar_s_t00
} ELSE {
   PIC   s s/a0L1R1__F1__f1__m1__e1__u3    
    PIC   n a_1/a22__F1__f1__m1__b1__u0    
}

// #MS_ primula '##'

LABEL LETSTALK
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK 105wlr_g_s

_already=~SfEvt[___city/bar_s_t_bar]
SELECTARRAY &&EvTitle_bar bar '' $_already

IF 'SfEvt[105/health_ixia_t_boring]||GFB[TTR_PLAYED]' {

    _already=~SfEvt[___city/bar_s_t_4ascend]
    IF $_already {
        SELECTARRAY &&EvTitle_4ascend_ostrea 4ascend '' $_already
    } ELSE {
        SELECTARRAY &&EvTitle_4ascend 4ascend '' $_already
    }
}
IF 'SfEvt[___city/bar_w_t_similar_person]' {
    _already=~SfEvt[___city/bar_s_t_secret_talk]
    SELECTARRAY &&EvTitle_secret_about_walross secret_talk '' $_already

}

SELECTARRAY &&Cancel &&Cancel C
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    SEEK_END
}
_stop=0
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '___city/bar_s_t_'$_evt
LOG_RECORD
DOTL
IF $_stop {
    GOTO SEEK_END
}

GOTO LETSTALK

