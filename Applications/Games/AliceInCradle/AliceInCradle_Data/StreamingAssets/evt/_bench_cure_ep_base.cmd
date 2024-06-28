DENY_MSGLOG
STOP_LETTERBOX
DENY_SKIP
IF 'sensitive_level>=2' {
    GOTO SEE
}
VALOTIZE 1
STOP_GHANDLE
WAIT 20
ALLOW_SKIP

IF 'masturbate_count>0 || TRUE' {
    SELECT 2
    &&Select_see_masturbate SEE
    &&Select_skip SKIP C

    LABEL SKIP
    PIC_FILL #9 0xff3A3434 
    PIC_FADEIN #9 15
    WAIT 17
    BENCH_CMD_EXECUTE cure_ep 1
    PIC_FADEOUT #9 30
    WAIT 20
    BENCH_EVENT_SUCCESS
    SEEK_END
}

LABEL SEE

IF 'SENSITIVE' {
    DENY_SKIP
    // UIP_VALOTIZE 0
    PIC_FILL &9 DARK
    PIC_FADEIN &9 40
    IF 'sensitive_level<2' {
        WAIT 65
        #< % >
        _c=~4+rand[3]
        // ========================
        LABEL ____LOOP

        PIC_FLASH	&10 15 0 20 ff:#99628F 
        PR_VOICE must
        SND kuchu
        
        WAIT ~45+rand[10]

        _c=~$_c-1
        IF $_c'>0' GOTO ____LOOP
        // ========================
        WAIT 20
        _c=~12+rand[5]
        // 
        LABEL ____LOOP2

        PIC_FLASH	&10 8 0 30 ff:#DF8CCF 
        PR_VOICE mustll
        SND kuchul

        
        WAIT ~20+rand[6]

        _c=~$_c-1
        IF $_c'>0' GOTO ____LOOP2
        // ========================
        WAIT 80
    
    } ELSE {
        WAIT 50
    }
    BENCH_EVENT_SUCCESS
    BENCH_CMD_EXECUTE cure_ep 1
    START_GHANDLE
    PIC_FADEOUT &9 30
    WAIT 20
} ELSE {
    BENCH_ALLOC_MASTURB
    BENCH_CMD_EXECUTE cure_ep 1
    START_GHANDLE

}