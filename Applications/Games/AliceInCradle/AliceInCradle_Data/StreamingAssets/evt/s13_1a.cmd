
TALKER	n L   

IF 'GFC[IXA2]==0' {
    

HKDS noelcane CRT #<%>  
TALKER_REPLACE	noelcane NoelCane talk_cane
    STOP_BGM	200 0 
    SCN_MANUAL_BGM_REPLACE ''

    MSG	noelcane_00 D


    PIC   n a_3/a2__F1__f3__m1__b2_u3    
    PIC_MP	n SWT|EXC
    MSG	n_01
    PIC_HIDE_ALL	 
    
    #MS_ % 'P[run] >>[Ev_pvv104_call.b 150,0 <<0.13] P[walk] >+[40,0:40] P[stand~]'
    WAIT_MOVE

    GFC_SET IXA2 1
    QUEST_FINISH p103_walross H  
    QUEST_PROGRESS p104_ixia 0
} ELSE {
    // 引き戻し
    #MS_ % 'P[run] >>[Ev_pvv104_call.b 150,0 <<0.13] P[walk] >+[40,0:40] P[stand~]'

    PIC   n a_2/a0L2R1__F2__f2__m1__b1_u2    
    PIC_MP	n SWT2 

    MSG	n_02
    PIC_HIDE_ALL	 
    WAIT_MOVE
}