#< bell >
STOP_LETTERBOX
DENY_SKIP
GREETING	L -30
WAIT_MOVE
#MS_ % 'P[interact~ =0]'
#PTCST ev_bell_hit
IF 'GFC[BRTU]<8' {
    
    IF 'GFC[BRTU]<6' {
        GFC_SET BRTU +=1
    }
    WAIT 15
    SEEK_END
} ELSE {
    WAIT 22
    #PTCST ev_bell_hit
    WAIT 22
    #PTCST ev_bell_hit
    WAIT 20
    #CALL Ev_barrel trigger_a
}
