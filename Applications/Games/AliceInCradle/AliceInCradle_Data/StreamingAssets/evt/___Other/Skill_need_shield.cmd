// ポーズ処理
// 1: Water
DEBUG $1
IFSTR $1 NOTCONTAINS '|WATER|' {
    SEEK_END
}
HIDE_LETTERBOX
DENY_SKIP
STOP_GHANDLE

WAIT	40
SHOW_LETTERBOX

TALKER n L
PIC   n a_3/a0__F1__f3__m2__b2_u0    
TL 20 PIC_MOVEA	n 8 SCARY
TL 75 PIC_MOVEA	n 13 SCARY
MSG	n_01

DOTL

IF '!SkillHas[guard]' {
    PIC   n a_2/a0L1R3__F2__f2__m1__b2_u2
    MSG	n_02
} ELSE {
    PIC   n a_1/a22__F1__f1__m1__b3__u1  
    MSG	n_03

    PIC   n a_1/a00L1R1__F1__f1__m1__b2__u0    
    MSG	n_04
    IF '!SkillEnable[guard]' {
        PIC   n a_3/a0__F1__f3__m1__b4_uo    
        MSG	n_06
    }

}