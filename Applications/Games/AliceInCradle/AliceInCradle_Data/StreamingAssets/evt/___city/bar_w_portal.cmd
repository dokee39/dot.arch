GREETING	R 20
#MS '@#[%::48]'

WAIT 20

TALKER	w L     
TALKER	n R     

IF '(GFC[WLR_G]&7)<=2' {
    GFC_SET	 WLR_G  ~(GFC[WLR_G]&8)|3
    IF 'GFC[WLR1]==0' {
        // 岩破壊後話しかけていない
        CHANGE_EVENT ___city/bar_w_s12_10a
    }
    CHANGE_EVENT2	___city/bar_w_t00
} ELSE {
    PIC   w w/a0L1R1__F2__f2__m1__e1__u1    
    PIC   n a_1/a22__F1__f1__m1__b1__u0    
}


// #MS_ primula '##'

LABEL LETSTALK
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK 105wlr_g

_already=~SfEvt[___city/bar_w_t_bar]
SELECTARRAY &&EvTitle_bar bar '' $_already

_already=~SfEvt[___city/bar_w_t_fight]
_already_tf=$_already
SELECTARRAY &&EvTitle_fight fight '' $_already

IF '(GFB[TTR_PLAYED_BAR])' {
    _already=~SfEvt[___city/bar_w_t_4ascend]
    SELECTARRAY &&EvTitle_4ascend 4ascend '' $_already
}

IF $_already_tf {
    _already=~SfEvt[___city/bar_w_t_forklore]
    SELECTARRAY &&EvTitle_forklore forklore '' $_already
    IF $_already {
        _already=~SfEvt[___city/bar_w_t_replacable]
        SELECTARRAY &&EvTitle_replacable replacable '' $_already
        IF '(GFC[WLR_H]&10)!=0' {
            _already=~SfEvt[___city/bar_w_t_similar_person]
            SELECTARRAY &&EvTitle_similar_person similar_person '' $_already
        }
    }
}

SELECTARRAY &&Cancel  
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    SEEK_END
}
_stop=0
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '___city/bar_w_t_'$_evt
LOG_RECORD
DOTL
IF $_stop {
    GOTO SEEK_END
}

GOTO LETSTALK

