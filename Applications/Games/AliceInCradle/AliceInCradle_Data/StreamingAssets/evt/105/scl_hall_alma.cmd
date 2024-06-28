// アルマルートでの会話
TALKER	l R   
TALKER	n L   
GREETING	L 20
#MS '@#[%] w20 @#[%]  w30 @#[%] '
WAIT 20


IF '(GFC[ALM1]&1)==0' {
    GFC_SET ALM1 |=1
    PIC   n a_1/a00L1R1__F1__f1__m1__b1__u0    
    PIC   l l1/a0L2R3__F1__m1__b1_ua    
    PIC_MP	l EXC 

    MSG	l_00

    PIC   n a_3/a0__F1__f3__m1__b4_u2    
    MSG	n_01

    PIC   n a_1/a22__F1__f1__m4__b1_u0    
    MSG	n_02

    PIC   l l1/a0L2R2__F1__m1__b2_u3    
    PIC_MP  l QUE
    MSG	l_03

    PIC   n a_1/a00L1R3__F1__f1__m6__b1_u1    
    MSG	n_04

    PIC   l l1/a0L1R1__F1__m1__b3_ua2    
    PIC_MP  l PLE
    MSG	l_05
    #VANISH alma_near
    
} ELSE {
    PIC   n a_1/a22__F1__f1__m1__b1__u3    
}

PIC   l l1/a0L1R2__F1__m1__b8_ua    
PIC_MP  l SWT2
MSG	l_06


MSG	l_07

MSG_HOLD
SELECT	2 
&&Select_go_class _GO_CLASS
&&Select_wait_a_minute _CANCEL C

// ========================
LABEL _CANCEL
// no
PIC   l l1/a0L1R2__F1__m1__b6_ua4    
PIC_MP  l SWB

MSG	l_08

PIC   n a_1/a22__F1__f1__m1__b3__uo    
PIC_MP  n SWT2
MSG	n_09

PIC   l l1/a0L2R1__F1__m1__b8_u4    
PIC_MP  l BLS|TTT
PIC_MOVEA	l 2 HOP

MSG	l_10
SEEK_END
// ========================

// ========================
LABEL _GO_CLASS
// yes
PIC   n a_1/a22__F1__f1__m4__b1_ua    
MSG	n_11

CHANGE_EVENT	105/main_classroom 1

