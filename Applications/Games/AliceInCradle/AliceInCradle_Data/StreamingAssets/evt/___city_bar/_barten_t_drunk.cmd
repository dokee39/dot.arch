

PIC   n a_3/a2__F1__f3__m6__ua    
PIC_MP	n BLS|PIY 
PIC   bt P0/a0L2R1__F1__e2    

// お酒を飲んだ状態で話しかける
MSG	n_00 
PIC   bt P0/a0L2R2__F1__e1    
PIC_MP	bt QUE  


MSG	bt_01 

IF 'GFC[BRT0]<3' {
    PIC   n a_3/a0__F1__f3__m6__uo    
    PIC_MP	n BLS|PIY|TTT
    // サービスを飲んでいない
    MSG	n_01 
} ELSE {

    PIC   n a_2/a0L3R1__F2__m8__u1    
    PIC_MP	n BLS|PIY 
    // サービスを飲んでいる
    MSG	n_10 

    PIC   bt P0/a0L1R3__F2__e1    
    MSG	bt_11 
    
    PIC   n a_3/a2__F1__f3__m6__uo    
    PIC_MP	n BLS|PIY 

    MSG	n_12 
}