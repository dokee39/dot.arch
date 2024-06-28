IF 'sensitive_level>0' {
    _result=0
    WAIT 20
    TALKER	n L   

    PIC   n a_3/a1__F1__f3__m1__b3_u2    
    PIC_MP	n BLS|SWT2 
    
    MSG n_00
    PIC_HIDE_ALL	 
      
    

    TX_BOARD *board_not_kenzen
}
