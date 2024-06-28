
// 4ascend

_already=~SfEvt[___city/bar_s_t_4ascend]
    PIC   n a_1/a22__F1__f1__m1__b1__u0    
IF '!'$_already {
    IF '!'$_already_4ascend {
        
        PIC   s s/a0L1R2__F2__f2__m1__e1__u1    
        MSG	s_00 

        PIC   n a_3/a2__F1__f3__m1__b4_u0    

        MSG	n_01 

        PIC   n a_2/a0L1R3__F2__f2__m1__b5_uo    
        MSG	n_02 

PIC   s s/a0L1R1__F1__f1__m1__e1__u2    
        MSG	s_03 

PIC   s s/a0L2R1__F2__f2__m1__e3__u4    
        MSG	s_04 
    }

    PIC   s s/a0L3R1__F1__f1__m1__e2__u2    
    MSG	s_05 
    _already_4ascend=1

    SELECTARRAY_CLEAR
    SELECTARRAY &&EvTitle_4ascend_ostrea PLAY
    SELECTARRAY &&Select_nothanks _SKIP
    SELECT -1 
    LABEL _SKIP
    SEEK_END

} ELSE {
    PIC   s s/a0L3R1__F1__f1__m1__e2__u2    
    MSG	s_05 

}

// ======================== あそぶ
LABEL PLAY
SF_EVT_SET
_stop=1
GFB_SET TTR_PLAYED 1

PIC_HIDE_ALL	 


PIC_FILL	&9 DARK
PIC_FADEIN	&9 55
WAIT 60


MGM_4ASCEND INIT ostrea
PIC_FADEOUT	&9 15

MGM_4ASCEND PLAY
REPLACE_BGM	40 150 

PIC_FILL	&9 DARK
PIC_FADEOUT	&9 55

WAIT 40

IFNDEF _final_result
    _final_result=1

IF $_final_result'==1' {
    PIC   n a_2/a0L1R3__F2__f2__m1__b5_u3    
    PIC_MP	n KIR 
    PIC   s s/a0L2R3__F2__f2__m1__e2__u2    
    MSG	s_10 

} ELSIF $_final_result'==0' {
// オストレアが勝った
    PIC   s s/a0L3R1__F1__f1__m1__e1__u2    
    PIC   n a_1/a22__F1__f1__m3__b1_u0    
    PIC_MP	n SWB 
    
    MSG	s_20 

}
PIC_HIDE_ALL	 
