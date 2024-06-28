
TALKER w L
TALKER n R

IF '!noel_torned' {
    PIC   n a_1/a22__F1__f1__m1__b1__u0    

    PIC   w w/a0L1R1__F2__f2__m1__e3__u3    
    MSG	w_00
    PIC   w w/a0L1R3__F1__f1__m1__e2__u2    
    PIC_MP	w LAG 
    
    MSG	w_01

    PIC   n a_3/a0__F1__f3__m1__b4_u2    
    PIC_MP	n SWT 
    
    MSG	n_01
} ELSE {
    PIC   n a_3/a1__F1__f3__m1__b1_u2    
    PIC_MP	n BLS|SWT2
    PIC   w w/a0L1R3__F2__f2__m1__e1__u1    
    PIC_MP	w QUE 
    
    MSG	w_02

    PIC   w w/a0L3R1__F3__f3__m1__e1__u1    
    PIC_MP	w SMK 
    
    MSG	w_03

    PIC   w w/a0L1R1__F1__f1__m1__e2__u2    
    MSG	w_04
}