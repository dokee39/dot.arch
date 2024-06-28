TALKER	i ROUT   
//@105/_health_ixia_term

// 保健室イクシャポータル
IF 'PVV==105&&GFC[IXA1]<4' {
    CHANGE_EVENT	105/health_primula_t00 1
}

#< ixia >
GREETING	L -5

IF '(GFC[IXA3]&1)==0' {
    GFC_SET	IXA3 |=1
    PIC_FILL	&9 DARK
    PIC_FADEIN	&9 55
    WAIT 60
    #MS '@L P[ev_on_bed_1]'
    PIC_FADEOUT	&9 50
    WAIT 40

} ELSE {
    WAIT 20

}


TALKER	n L   
TALKER	i R   
@105/_health_ixia_term

PIC   n a_3/a0__F1__f3__m1__b4_u0    
PIC   i i/a00L1R2__F1__f1__m1__b1_u4    

#MS_ ixia '##'

LABEL LETSTALK

SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK 105ixia


_already=~SfEvt[105/health_ixia_t_uniform]
SELECTARRAY &&EvTitle_uniform uniform '' $_already

_already=~SfEvt[105/health_ixia_t_curemagic]
SELECTARRAY &&EvTitle_curemagic curemagic '' $_already

_already=~SfEvt[105/health_ixia_t_boring]
IF '!'$_already {
    SELECTARRAY &&EvTitle_boring boring '' $_already
} ELSE {
    SELECTARRAY &&EvTitle_4ascend_ixia ttr '' 1
}

SELECTARRAY &&Cancel &&Cancel C
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    SEEK_END
}
_stop=0
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '105/health_ixia_t_'$_evt
LOG_RECORD
DOTL
IF $_stop {
    GOTO SEEK_END
}


GOTO LETSTALK

