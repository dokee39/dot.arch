IF 'GFC[BRTU]>=2' {
    GOTO _SUCCESS
}
START_LETTERBOX


GREETING	L -8

STOP_GHANDLE

DENY_EVENTHANDLE
TL 40 MSG_SKIPHOLD
HKDS	n RT #<%>    TT


MSG n_00 T

ALLOW_EVENTHANDLE

NUMCOUNTER 0 999 0 378

MSG_HIDE	  

IF $_result=='378' {
    _result=1
    LABEL _SUCCESS
    GFC_SET_MX BRTU 2   
} ELSE {
    IF 'GFC[BRTU]==0' {
        HKDS	n
        TALKER	n L
        
        PIC   n a_3/a0__F1__f3__m1__b3_u2    
        PIC_MP	n  SWT
        GFC_SET_MX BRTU 1
        MSG n_01 T
    }
    _result=0
}