GREETING	L -4
IF 1 {
    WAIT 15
    TALKER	n    R
    PIC   n a_3/a0__F1__f3__m1__b4_uo    
    MSG n_00
    GFB_SET TTR_PLAYED 1
    GFB_SET TTR_PLAYED_BAR 1
    SEEK_END

}

IF '!GFB[TTR_PLAYED_BAR]' {
    
    WAIT 15
    TALKER	n    R
    PIC   n a_3/a0__F1__f3__m1__b4_uo    
    MSG n_00


    SELECTARRAY_CLEAR
    SELECTARRAY &&EvTitle_4ascend_play PLAY
    SELECTARRAY &&Select_nothanks _SKIP
    SELECT -1 
    LABEL _SKIP
    SEEK_END

    // ======================== あそぶ
    LABEL PLAY
    GFB_SET TTR_PLAYED 1
    GFB_SET TTR_PLAYED_BAR 1
    _stop=1

}

PIC_HIDE_ALL	 


PIC_FILL	&9 DARK
PIC_FADEIN	&9 55
WAIT 60


MGM_4ASCEND INIT _online _local2p
PIC_FADEOUT	&9 15

MGM_4ASCEND PLAY
REPLACE_BGM	40 150 

#MS_ % '='
PIC_FILL	&9 DARK
PIC_FADEOUT	&9 55
WAIT 40