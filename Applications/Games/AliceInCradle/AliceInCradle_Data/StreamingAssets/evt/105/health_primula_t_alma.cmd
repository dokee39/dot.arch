
SF_EVT_SET
TALKER	n L   
TALKER	p R   

PIC   p p/a31__F1__f1__m1__b1_u1    
MSG	p_00

PIC   n a_1/a00L1R3__F1__f1__m1__b1__u0    
PIC_MP	n QUE  

MSG	n_01

IF 'GFC[ALM0]==0' {

    // 駅でアルマに会っていない
    PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
    MSG	n_02

    PIC   p p/a11__F2__f2__m3__b1_u0    
    MSG	p_03

    PIC   n a_1/a22__F1__f1__m4__b1_u0    
    MSG	n_04
} ELSE {

    // 駅でアルマに会っている
    PIC   p p/a11__F2__f2__m3__b1_u0    
    MSG	p_10
    PIC   p p/a11__F1__f1__m1__b2_u0    
    MSG	p_11

    PIC   n a_1/a22__F1__f1__m4__b1_u0    

    MSG	n_11

}