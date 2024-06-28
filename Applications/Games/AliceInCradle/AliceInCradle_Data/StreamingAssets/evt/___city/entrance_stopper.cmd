// 1: aim
// 2: Lp name
_p=0
_aim=$1
_lpname=$2
IF 'noel_bote[0]' {
    _p=1
} ELSIF 'noel_torned||noel_cloth_dirty' {
    _p=2
} ELSE SEEK_END

<LOAD>
#< % >
_x=~m2d_current_x
#< stopper >
IFSTR $_aim IS 'R' {
    _sx=~(m2d_current_x+m2d_current_sizex+1.5)-$_x
    _sxc=~$_sx*CLEN
    _sd=90
    #MS_ % 'F >+['$_sxc',0 <<0.09] @L P[stand_ev~]'
} ELSE {
    _sx=~(m2d_current_x-m2d_current_sizex-1.5)-$_x
    _sxc=~$_sx*CLEN
    _sd=-90
    #MS_ % 'F >+['$_sxc',0 <<0.09] @R P[stand_ev~]'
}

TALKER	n $1

IF $_p'==1' {

    PIC   n a_3/a1__F1__f3__m2__b2_u1    
    PIC_MP	n BLS 
    PIC_MOVEA	n 15 SCARY
    
    
    MSG	105/m00_entrance_00*n_05


    MSG	105/m00_entrance_00*n_06
} ELSE {

    PIC_MOVEA	n 15 SCARY
    PIC   n a_1/a00L3R1__F1__f1__m1__b3__u0    
    PIC_MP	n BLS|SWT

    MSG 105/m00_entrance_00*n_04
}
PIC_HIDE_ALL	 
#MS_ % 'F >>['$_lpname'.'$_aim'b '$_sd',0 <<0.09] '
WAIT_MOVE
#MS '='