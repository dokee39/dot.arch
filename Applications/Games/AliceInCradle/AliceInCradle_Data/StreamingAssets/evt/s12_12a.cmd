// ostrea

GREETING	L 40



TALKER s L
TALKER n R

IF '!noel_torned' {
    PIC   n a_1/a00L1R1__F1__f1__m1__b1__u3    
    PIC   s s/a0L1R3__F2__f2__m1__e1__u3    

    MSG	s_00

    PIC   s s/a0L2R1__F1__f1__m1__e2__u1    
    MSG	s_01

} ELSE {
    PIC   n a_3/a1__F1__f3__m1__b1_u2    
    PIC_MP	n BLS|SWT2
    PIC   s s/a0L2R2__F2__f2__m1__e3__u5    
    PIC_MP	s BLS 

    MSG	s_03


    PIC   s s/a0L1R3__F1__f1__m1__e2__u3    
    PIC_MP	s BLS 

    MSG	s_04


}