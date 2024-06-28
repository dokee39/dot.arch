

// 6-A === もう1度話す
IF '!noel_torned' {
    PIC   n a_1/a22__F1__f1__m1__b1__u0    
    PIC   l l1/a0L1R2__F1__m1__b5_u1    
    MSG	l_00 

} ELSE {

    PIC   l l1/a0L3R2__F1__m1__b5_u3    
    PIC_MP	l BLS|SWT
    
    PIC   n a_3/a1__F1__f3__m2__b1_u1    
    // 服が破れてる状態でアルマと話す
    MSG	l_01
}