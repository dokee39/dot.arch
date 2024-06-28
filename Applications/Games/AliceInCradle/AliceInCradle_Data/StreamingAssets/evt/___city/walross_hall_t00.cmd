
DEFAULT_MIST_POSE 1
IF '(GFC[WLR_H]&1)==0' {
    <LOAD>
    #MS_ % 'F'
    WAIT_MOVE
    TALKER	n L   
    PIC   n a_3/a2__F1__f3__m2__b3_u0    I
    PIC_MOVEA	n 15 SCARY
    
    
    MSG n_00   I

    PIC   n a_2/a0L1R3__F2__f2__m2__b1_u2    
    PIC_MP	n SWT 
    
    MSG n_01 T
    GFC_SET	WLR_H  |=1
    
}

