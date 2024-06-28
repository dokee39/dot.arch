GFC_SET_MX BRT0 3
// 絶対魔族ですよね
PIC   bt P0/a0L1R1__F1__e1    
PIC   n a_3/a2__F1__f3__m1__b1_u2    
PIC_MP	n TTT 

MSG	n_00
PIC   bt P0/a0L1R3__F3__e2    

MSG	bt_02 
PIC   bt P0/a0L2R2__F1__e3    
MSG	bt_03 

PIC   n a_3/a1__F1__f3__m8__b1_u2    

MSG	n_04 
PIC   bt P0/a0L3R4__F1__e1    

MSG	bt_05 

SHOW_BLURSC
PIC_HIDE n
PIC_HIDE bt
WAIT 10
DENY_SKIP
LUNCHSTORE city_bar_t02
WAIT 4
HIDE_BLURSC
WAIT 20
ALLOW_SKIP

IF 'SerHas[DRUNK]' {
        // サービスを飲んだ
    PIC   n a_2/a0L1R3__F2__m8__ua2    
    PIC_MP	n  BLS|PIY
    
    PIC   bt P0/a0L1R2__F1__e1    
    MSG	n_06 
    PIC   bt P0/a0L2R1__F1__e2    
    MSG	bt_07 


    MSG	bt_08 


} ELSE {
    PIC   bt P0/a0L3R3__F1__e1    
    PIC   n a_2/a0L1R3__F2__f2__m1__b1_u2    
    PIC_MP	n TTT 
    
    // サービスを飲まなかった
    MSG	n_10 

    PIC   bt P0/a0L2R1__F1__e2    
    MSG	bt_11 

}