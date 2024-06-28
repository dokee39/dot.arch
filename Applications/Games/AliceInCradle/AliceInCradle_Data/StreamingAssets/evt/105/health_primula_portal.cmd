// 保健室プリムラポータル
IF 'PVV==105&&GFC[IXA1]<4' {
    CHANGE_EVENT	105/health_primula_t00 0
}

GREETING	@ 15
WAIT 20

TALKER	n L   
TALKER	p R   

PIC   n a_1/a22__F1__f1__m1__b1__u3    
PIC   p p/a11__F1__f1__m1__b1_u0    

#MS_ primula '##'

LABEL LETSTALK
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK 105primula

_already=~SfEvt[105/health_primula_t_road2city]
SELECTARRAY &&EvTitle_road2city road2city '' $_already

IF 'PVV==105' {

_already=~SfEvt[105/health_primula_t_alma]
SELECTARRAY &&EvTitle_alma alma '' $_already
}



IF 'SfEvt[105/health_ixia_t_boring]' {
    _already=~SfEvt[105/health_primula_t_ttr]
    SELECTARRAY &&EvTitle_4ascend_primula ttr '' $_already
}


SELECTARRAY &&Cancel &&Cancel C
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    SEEK_END
}
_stop=0
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '105/health_primula_t_'$_evt
LOG_RECORD
DOTL
IF $_stop {
    GOTO SEEK_END
}

GOTO LETSTALK

