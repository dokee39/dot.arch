// 1-C: 1-Aまたは1-B のあと、森に戻ろうとする

PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC   v v/a12__F1__m1__b2_u0    
MSG	v_00

REPLACE_BGM	40 0 0

PIC   n a_3/a2__F1__f3__m5__b1_u0    
MSG	n_01

PIC   v v/a13__F1__m1__b3_u0    
MSG	v_02

PIC   n a_3/a1__F1__f3__m3__b1_uo    
PIC_MP	n SWT2|BLS

MSG	n_03


PIC   v v/a13__F2__m1__b1_u0    
MSG	v_04
PIC   v v/a12__F1__m1__b2_u0    
MSG	v_04_2

PIC   n a_1/a00L3R1__F1__f1__m3__b1_u0    
PIC_MP n SMK
MSG	n_05

PIC   v v/a13__F1__m5    
MSG	v_06

PIC   n a_3/a1__F1__f3__m5__b2_u0    
PIC_MP n BLS
MSG	n_07



PIC_HIDE_ALL	


CHANGE_EVENT	s01_laevi_4a


