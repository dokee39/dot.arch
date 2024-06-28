STOP_LETTERBOX
IF 'PVV<=8' {
    _1=R
    _msgcmd=s01_5z*n_00
} ELSE {
    _1=L
    _msgcmd=s01_5z*n_02
}

GREETING	$_1 20
IFSTR $_1 IS R HKDS	n CCLB  #<%>
ELSE HKDS	n RB  #<%>

MSG $_msgcmd

IFSTR $_1 IS L {
    #MS_ % '>+[-40,0:25]'
} ELSE {
    #MS_ % '>+[40,0 :25]'
}
WAIT_MOVE