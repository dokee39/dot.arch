

SF_EVT_SET
TALKER v L
TALKER n R

PIC   v v/a12__F2__m1__b1_u2    
PIC   n a_1/a00L1R1__F1__f1__m1__b1__u0    
MSG	v_00

PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_01


PIC   v v/a11__F1__m4__b2_ua    
MSG	v_02


// ※シナリオの進み（s10 で衛兵のイベントを見ているかどうか）で2パターンの回答～～
IF 'PVV<102' {
    PIC   n a_1/a00L3R1__F1__f1__m1__b2__u1    
    MSG	n_03
} ELSE {
    PIC   n a_2/a0L1R3__F2__f2__m1__b2_uo    
    MSG	n_04
}

// ～～ここまで
PIC   v v/a13__F1__m1__b3_u1    
MSG	v_05

PIC   n a_1/a22__F1__f1__m5__b1_u1    
PIC_MP	n SWT


MSG	n_06