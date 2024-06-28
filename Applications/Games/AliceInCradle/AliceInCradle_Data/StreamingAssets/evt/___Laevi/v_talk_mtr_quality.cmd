

SF_EVT_SET
TALKER v L
TALKER n R

PIC   v v/a13__F1__m4__b1_ua    
PIC   n a_1/a22__F1__f1__m1__b1__uo    

MSG	n_00

PIC   v v/a12__F1__m5    
PIC_MP  v LAG
MSG	v_01


// 撫でられる
PIC   n a_3/a0__F1__f3__m1__b3_u3    
PIC_MOVEA	v 18 DANCE
PIC_MOVEA	n 3 HOP
PIC_MP	n BLS|SWT
SND cloth_off

MSG	n_02

PIC   v v/a11__F2__m1__b1_u0    
MSG	v_03

PIC   n a_1/a00L1R1__F1__f1__m3__b1_ua    
PIC_MP	n QUE 

MSG	n_04

PIC   v v/a13__F1__m1__b1_u1    
@___Other/swin   swin/dangerousness C
HKDS	v CCRB 

MSG	v_05
PIC   v v/a12__F1__m5    
PIC_MOVEA v 100 DANCE
MSG	v_06

PIC_HIDE    %W

PIC   n a_2/a0L1R2__F2__f2__m1__b2_u0    
PIC_MP n BLS|SWT2
MSG	n_06

HKDS v
PIC   v v/a13__F2__m1__b2_u1    
MSG	v_07