ALLOW_MSGLOG

TALKER	n R   
TALKER	d   L
HKDS	n    
HKDS	d

PIC   d d1/a0L4R1__F1__m1__b3_ua    
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u0    
MSG	d_00

PIC   n a_1/a00L1R1__F1__f1__m1__b2__uo    
MSG	n_01

PIC   d d1/a0L1R3__F1__m1__b3_ua3    
MSG	d_02


IF 'GFC[TLD0]==0' {
    // 初回
    GFC_SET_MX	TLD0 1 
    PIC   n a_1/a22__F1__f1__m1__b3__u0    
    MSG	n_03


    PIC   d d1/a0L1R2__F1__m1__b1_u2_2    
    MSG	d_04

PIC   n a_3/a0__F1__f3__m8__b1_u0    
PIC_MP	n PLE 

    MSG	n_05

    PIC   d d1/a0L1R1__F1__m1__b4_ua3    
    PIC_MP	d DEP 
    
    MSG	d_06

    SELECT 2
&&Select_lunchtime _LUNCHTIME
&&Select_nothanks _END c
LABEL _LUNCHTIME
PIC_HIDE_ALL	 
LUNCHTIME
_end_talk=1
} ELSE {
    ITEMMNG_POP_BYTES
}

LABEL _END

REPLACE_BGM	70 70 
