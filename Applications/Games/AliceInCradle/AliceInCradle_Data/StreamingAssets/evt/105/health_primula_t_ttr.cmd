_already=~SfEvt[105/health_primula_t_ttr]

PIC   n a_3/a0__F1__f3__m8__b1_u0    
PIC_MP	n ONP 
IF '!'$_already {
    PIC   p p/a11__F1__m2__b1_u1    
    
    MSG	n_00

    PIC   p p/a11__F2__f2__m1__b1_u1    
    MSG	p_01

    PIC   p p/a12__F1__f1__m1__b2_u1    
    MSG	p_02
} ELSE {
    PIC   p p/a11__F1__f1__m1__b2_u0    
    MSG	p_10
    
}


_stop=1
STOP_BGM	100 0

DENY_SKIP
PIC_HIDE_ALL	 


PIC_FILL	&9 DARK
PIC_FADEIN	&9 55
WAIT 60

MGM_4ASCEND INIT primula
PIC_FADEOUT	&9 15

MGM_4ASCEND PLAY
REPLACE_BGM	40 150 
PIC_FILL	&9 DARK
PIC_FADEOUT	&9 55

WAIT 40
IF $_final_result'>=0' {
    SF_EVT_SET
    PIC   p p/a11__F1__f1__m1__b2_ua    
    PIC   n a_1/a22__F1__f1__m1__b1__u3    
    MSG	p_100
}
