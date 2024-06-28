
// ノエル帰宅
PVV 5
QUEST_FINISH p000_break_wall
#< % >

TALKER n R
IF 'GFC[PVV0_KILLED]>0' {
    DANGER 10 1

    WAIT 20
    PR_KEY_SIMULATE	L 0 
    PR_KEY_SIMULATE	R 0 
    START_LETTERBOX
    WAIT_MOVE
    WAIT 20
    WAIT_FN REELMNG

    // 1-B: s00 で敗北した
    PIC   n a_1/a00L1R3__F1__f1__m1__b3__u0    
    MSG	n_01

} ELSIF 'GFB[PVV0_YORIMICHI]' {
    _msg_key=n_00
    IF 'danger_level<8' {
        DANGER 8 1
    }
    IF 'danger_level>=10' {
        _msg_key=n_01
    }
    
    WAIT 20
    PR_KEY_SIMULATE	L 0 
    PR_KEY_SIMULATE	R 0 
    
    START_LETTERBOX
    WAIT_MOVE
    WAIT 20
    WAIT_FN REELMNG
    // 寄り道した
    PIC   n a_3/a2__F1__f3__m1__b3_u2    
    MSG	$_msg_key
} ELSE {
    DANGER 6 1
}
PIC_HIDE_ALL	


STOP_LETTERBOX
WAIT_MOVE
AUTO_SAVE

// 1-B: s00 で敗北した

