// テキスト:名前

SF_EVT_SET
TALKER n L
TALKER t R
PIC   n a_1/a22__F1__f1__m6__b1_u0    
PIC   t t/a0L1R3__F1__m4_u1__m1_b1    

MSG n_00

PIC   t t/a0L4R1__F1__m1_u1__m1_b1    
MSG t_00

PIC   n a_1/a00L1R1__F1__f1__m4__b1_ua    
MSG n_01

PIC   t t/a0L3R1__F1__m5_u2__m4_b1    
MSG t_01

IF TRUE {
PIC   n a_1/a00L1R3__F1__f1__m1__b1__uo    
MSG n_02

PIC   t t/a0L4R1__F1__m7_u1__m7_b1    
MSG t_02

PIC   n a_1/a00L3R3__F1__f1__m3__b1_u0    
MSG n_03

PIC   t t/a0L2R2__F1__m6_u1__m6_b1    
MSG t_03
}

PIC   n a_1/a22__F1__f1__m5__b1_u1    
PIC_MP  n DEP

MSG n_04