
TALKER	n L   
TALKER	i R   
TALKER	p LOUT
PIC   n a_1/a00L3R3__F1__f1__m1__b1__u1    
PIC   i i/a00L1R1__F2__f2__m1__b1_u2    

// 暇じゃない?
MSG	i_00

PIC   i i/a00L2R2__F1__f1__m1__b5_u4    
MSG	i_01

PIC   n a_1/a22__F1__f1__m1__b1__uo    
MSG	n_02

TALKER	i ROUT

WAIT 30
PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC   p p/a11__F1__f1__m1__b1_u0    
TALKER	n R  
TALKER	p L   
MSG	n_03

PIC   p p/a11__F2__f2__m1__b1_u1    
PIC_MP	p QUE 

MSG	p_04

PIC   n a_3/a1__F1__f3__m8__b1_u1    
PIC_MP  n KIR
PIC_MOVEA	n 2 HOP

MSG	n_05

PIC   p p/a12__F2__f2__m2__b1_u0    
MSG	p_06


PIC_HIDE p
WAIT 30
PIC   i i/a00L1R5__F1__f1__m1__b5_u1    
TALKER	n L   
TALKER	i R   
TL 30 PIC   n a_1/a00L1R1__F1__f1__m1__b1__u3    
MSG	i_07

DOTL
PIC   i i/a00L3R2__F2__f2__m1__b5_u2    

MSG	i_08
PIC   i i/a00L5R3__F1__f1__m1__b5_u0    
PIC_MP  i PLE
MSG	i_09


SELECTARRAY_CLEAR
SELECTARRAY &&EvTitle_4ascend_ixia PLAY
SELECTARRAY &&Select_nothanks _SKIP
SELECT -1 
LABEL _SKIP
SEEK_END

// ======================== あそぶ
LABEL PLAY
SF_EVT_SET
GFB_SET TTR_PLAYED 1
CHANGE_EVENT2	105/health_ixia_t_ttr 1
