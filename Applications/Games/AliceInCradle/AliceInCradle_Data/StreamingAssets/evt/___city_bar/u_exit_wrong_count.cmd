
IF '2<GFC[BRTU]&&GFC[BRTU]<8&& GFB[OMORASHI_BAR]' {
    START_LETTERBOX
    WAIT 20
    PR_KEY_SIMULATE	L 0 
    PR_KEY_SIMULATE	R 0
    #MS_ % 'P[stand_ev~]' 
    
    GFC_SET BRTU 2
    TALKER	n R   
    PIC   n a_1/a00L1R1__F1__f1__m1__b2__u0    
    PIC_MP	n QUE 

    MSG n_00 T
} 