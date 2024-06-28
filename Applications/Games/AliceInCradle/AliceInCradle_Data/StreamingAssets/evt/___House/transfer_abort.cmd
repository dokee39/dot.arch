// 1: L または R をいれると GREETING 設定
IFDEF 1 {
    STOP_LETTERBOX
    GREETING	$1 20
    IFSTR $1 IS L HKDS	n CCLT  #<%>
    ELSE HKDS	n RT  #<%>
    __direction=$1
}

IF 'PVV==6' {
    MSG s01_laevi_4a*n_20
    _result=0
} ELSIF 'PVV<8' {
    MSG s01_5z*n_00
    _result=0
} ELSIF '10<=PVV&&PVV<=15' {
    MSG s01_5z*n_03
    _result=0
} ELSIF 'PVV<100' {
    IF 'PVV==9' {
        DEF_CURMAP __map 
        IFSTR $__map IS 'house_center' {
            MSG s01_5z*n_02
            SEEK_END
        }
    }
    MSG s01_5z*n_01
    _result=0
} ELSIF 'PVV==100' {
    IF 'stomach==0&&GFC[TLD0]==0' {
        MSG s01_5z*n_04
    } ELSE {
        MSG s01_5z*n_05
    }
    _result=0
}