
_result=1
_p=0
IF 'noel_bote[0]' {
    _p=1
} ELSIF 'noel_torned||noel_cloth_dirty' {
    _p=2
} ELSIF 'warp_not_injectable'  {
    _result=0
    SEEK_END
} ELSE 
    SEEK_END

_result=0


TALKER	n L
HKDS	n '' '' ''
START_LETTERBOX

IF $_p'==1' {

    PIC   n a_3/a1__F1__f3__m2__b2_u1    
    PIC_MP	n BLS 
    PIC_MOVEA	n 15 SCARY
    
    
    MSG	n_10
} ELSE {

    PIC_MOVEA	n 15 SCARY
    PIC   n a_1/a00L3R1__F1__f1__m1__b3__u0    
    PIC_MP	n BLS|SWT

    MSG n_00
}