START_LETTERBOX

TALKER	n L

HALF_BGM	1

#MS_ % '>+[210,0 <<0.06] P[beware~]'

WAIT 60
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_00
PIC_HIDE_ALL	


#MS '##'
PE ZOOM2 60
#MS_ % 'w30 >>[Ev_read -20,0 :90] P[stand_ev~] @RB w20'

WAIT_MOVE 
CHANGE_EVENT2	s03_letter

// プリムラ先生(P)書き置き ※ここも翻訳が必要
// s03 1-B : s00 で敗北していない
WAIT 40
#MS_ % '@R '

IF '!noel_torned' {
    <LOAD>
    PIC   n a_1/a22__F1__f1__m1__b2__u1    
    MSG	n_01
} ELSE {

    <LOAD>
    // s03 1-C : s00 で敗北している
    PIC   n a_1/a00L1R1__F1__f1__m1__b3__u0    
    MSG	n_02

}

#MS '#~'
#VANISH

PVV 8
QUEST_PROGRESS p002_primula 1

AUTO_SAVE
