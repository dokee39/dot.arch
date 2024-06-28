START_LETTERBOX
PR_CURE 1 1 1 1 1
DANGER 0 1
PE ZOOM2 1
WAIT 5
#MS_ % 'P[bench_pajama] @L  -G  >>[Ev_bench 0,-10] ## #; '

TALKER	n L  
TALKER_REPLACE	n 


PIC_FILL	&3 DARK

PIC_FADEOUT	&3 130


WAIT 110

// 1-A ========================
HKDS	n    RB #<%>
MSG	n_00

// パジャマからいつもの白い服に着替える
PIC_FILL	&3 DARK
PIC_FADEIN &3 55
WAIT 65

PE ZOOM2 -1
#MS_ % '_ +G  >>[Ev_bench.b -18,0]  P[stand_wait_normal_2~]'

PIC_FADEOUT &3 80

WAIT 50
HKDS	n

// 汚されたかどうかで分岐 2-A/2-B
IF 'GFC[PVV0_KILLED]<2' {
    // 2-A 綺麗な場合 ========================
    PIC   n a_1/a22__F1__f1__m1__b2__u0    
    MSG	n_01

    WAIT 15
    PIC   n a_1/a00L1R1__F1__f1__m1__b3__u3    
    MSG	n_02
} ELSE {

    // 3-A 以降へ
    // 2-B 1日目に敗北していた場合 ========================
    PIC   n a_1/a22__F1__f1__m1__b2__u0    
    MSG	n_03

    PIC   n a_2/a0L1R3__F2__f2__m1__b2_u2    
    MSG	n_04

    WAIT 15
    PIC   n a_3/a1__F1__f3__m1__b3_u2    
    PIC_MOVEA	n 15 DANCE
    

    MSG	n_05
}


QUEST_FINISH p002_primula  H
CHANGE_EVENT2	s10_get_marker

AUTO_SAVE
