#< % >
_noelbls=0
IF 'noel_torned' {
    _noelbls=1
    IF 'noel_bote[0]' {
        _noelpic=a_toilet/a0B__F1__m4__u3    
    } ELSE {
       _noelpic=a_toilet/a0B__F1__m5__u1    
    }
} ELSE {
    IF 'noel_bote[0]' {
        _noelbls=1
        _noelpic=a_toilet/a0__F1__m2__u2    
    } ELSE {
        IF 'SerHas[BURST_TIRED]||SerHas[BURST_TIRED]||SerHas[ORGASM_AFTER]||SerHas[HP_REDUCE]||SerHas[MP_REDUCE]||SerHas[SHAMED]||SerHas[DRUNK]||noel_wetten' {
            _noelpic=a_toilet/a0__F1__m5__u1    
        } ELSE {
            _noelpic=a_toilet/a0__F1__m1__u1    

        }

    }
}
PIC nb $_noelpic

IF $_noelbls {
    PIC_MP nb BLS
}