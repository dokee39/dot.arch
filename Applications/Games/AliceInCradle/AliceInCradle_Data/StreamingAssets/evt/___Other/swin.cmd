// 1: Image
// 2: L or R or C
// 3: talker を与えると吹き出し位置調整

PIC_SWIN   $1

IFSTR $2 IS L {
    PIC_MV %W C-170 C 0
    PIC_MV %W X Y+100 30 ZSIN
} ELSIFSTR $2 IS R {
    PIC_MV %W C+170 C 0
    PIC_MV %W X Y+100 30 ZSIN
} ELSE {
    PIC_MV %W C C 0
    PIC_MV %W X Y+100 30 ZSIN
}

IFSTR $3 ISNOT '' {
    IFSTR $2 IS L {
        HKDS	$3      CLB
    } ELSIFSTR $2 IS R {
        HKDS	$3      CRB
    }
    
}