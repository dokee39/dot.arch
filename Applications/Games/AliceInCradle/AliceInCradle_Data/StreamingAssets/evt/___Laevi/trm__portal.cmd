
IF 'PVV<=100' {
    SEEK_END
}
_result=1
_no_after_move=0
IF 'GFC[TRM0]==0' {
    CHANGE_EVENT	___Laevi/trm_000
}
IF 'GFC[TRM0]==1' {
    _no_after_move=1
}

IF $_result'==1' {
    START_LETTERBOX
    #MS_ % '>>[Ev_the_room.b <0.08 ] P[walk~]'
    WAIT 10
    LP_ACTIVATE_TO_CHIP Ev Ev_the_room
    PIC_FILL	&10 DARK
    PIC_FADEIN	&10 20

    INIT_MAP_MATERIAL house_theroom 1
    WAIT 35
    WAIT_FN MAP_TRANSFER
    NEL_MAP_TRANSFER house_theroom R !ExitD_the_room
    LP_ACTIVATE ExitD_the_room
    #MS_ % '>>[ExitD_the_room.bR 20,0 ]'
    @___Laevi/trm__fading 1
    PIC_FADEOUT	&10 50
    PIC_TFADE	&10 DOOR_OPEN

    _fadet=60
    IF '!'$_no_after_move {
        #MS_ % '>>[ExitD_the_room.bR -40,0] >+[50,0 :60] '
        WAIT_MOVE
        LP_DEACTIVATE ExitD_the_room
    } ELSE {
        
        #CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
        WAIT 1
    }
    
}

