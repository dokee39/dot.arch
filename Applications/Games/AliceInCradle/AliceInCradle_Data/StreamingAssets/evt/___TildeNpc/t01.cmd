
#SND_LOAD 
TALKER n L
TALKER d R

PIC   d d1/a0L1R2__F1__m1__b1_u3    
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u0    
MSG	d_00

PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_01

PIC   d d1/a0L2R4__F1__m1__b6_ua4    
MSG	d_02


// 分岐: 昼・夕方の場合 ===
IF '!is_night' {
        
    PIC   d d1/a0L3R3__F1__m1__b3_u2_2    
    MSG	d_03

    PIC   n a_2/a0L1R3__F2__f2__m1__b3_u2    
    PIC_MP	n  SWT2
    
    MSG	n_04

    PIC   d d1/a0L1R2__F1__m1__b2_ua4    
    MSG	d_05

} ELSE {

// 分岐: 夜の場合 ===
    PIC   d d1/a0L2R2__F1__m1__b1_u2_2    
    MSG	d_06

    PIC   n a_1/a22__F1__f1__m1__b1__u1    
    PIC_MP  n QUE
    MSG	n_07

    PIC   d d1/a0L1R2__F1__m1__b4_ua    
    MSG	d_08
}


PIC   n a_1/a00L3R1__F1__f1__m1__b2__u1    
MSG	n_09

PIC   d d1/a0L2R4__F1__m1__b6_u3    
PIC_MP d PLE
MSG	d_10

PIC   n a_3/a0__F1__f3__m1__b4_u2    
MSG	n_11


IF 'stomach<=4' {
    MSG_HIDE	  
    WAIT 10
    //ノエルの腹の虫の音
    SND	noel_onaka
    WAIT 70
        
    // ノエルのおなかが鳴る
    // 分岐: ノエルのおなかが空いている ===
    PIC   n a_2/a0L2R2__F2__f2__m2__b1_u1    
    PIC_MP n SWT2
    MSG	n_12

    PIC   d d1/a0L3R2__F1__m1__b2_u2_2    
    MSG	d_13

    PIC   n a_2/a0L2R3__F2__f2__m3__b1_ua    
    PIC_MOVEA	n 15 SCARY
    PIC_MP	n EXQ 
        
    MSG	n_14

    PIC   d d1/a0L1R1__F1__m1__b4_ua2    
    MSG	d_15

} ELSE {

    // 分岐: ノエルのおなかが空いてない ===
    PIC   d d1/a0L2R1__F1__m1__b2_u2_2    
    PIC_MP d QUE
    MSG	d_16

    PIC   n a_2/a0L2R2__F2__f2__m1__b4_u2    
    PIC_MP  n SWT2|BLS
    MSG	n_17
}

// 分岐ここまで ===
PIC   n a_1/a00L1R3__F1__f1__m1__b2__uo    
MSG	n_18

PIC   d d1/a0L1R2__F1__m1__b4_ua    
PIC_MP d DEP
MSG	d_19

PIC   n a_2/a0L2R2__F2__f2__m3__b2_uo    I
@_TSUKKOMI 
PIC_MP n SWT2 I
MSG	n_20 I

PIC   d d1/a0L3R3__F1__m1__b3_u2_2    
MSG	d_21

PIC   d d1/a0L4R2__F1__m1__b1_u2_2    
MSG	d_22

PIC   d d1/a0L2R1__F1__m1__b2_ua    
MSG	d_23