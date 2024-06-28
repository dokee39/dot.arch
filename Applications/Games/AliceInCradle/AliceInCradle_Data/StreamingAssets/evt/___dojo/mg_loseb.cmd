// 道場ゲーム じゃんけんに敗北
// _result / _lose_count
DENY_SKIP


_is_fast_or_slow=0
_msg_key=dj_01
IFSTR $_result IS 'LOSEB_FAST' {
    _is_fast_or_slow=1
    HKDS	dj RB @ROUT
    HKDS	n LT @RT
    _msg_key=dj_01_fast
} ELSIFSTR $_result IS 'LOSEB_SLOW' {
    _is_fast_or_slow=2
    HKDS	dj RB @ROUT
    HKDS	n LT @RT
    _msg_key=dj_01_slow
} ELSE {
    HKDS	dj RT @ROUT
    HKDS	n LB @LT
}

WAIT 60
LOAD_BGM	BGM_dojo_loseb


WAIT 100
REPLACE_BGM	0 0 0 
WAIT_BUTTON	 
ALLOW_SKIP
MSG dj_00
IF $_lose_count'==0' {
    MSG n_00
    MSG $_msg_key
}

IFSTR $_skill_key IS '_tuto' {
    IF $_is_fast_or_slow'==0' {
        MSG dj_tuto00
    }
    MSG_HIDE	  
    WAIT 26
    // チュートリアル終了
    MSG dj_tuto01
} ELSE {
    IF $_lose_count'==-1' {
        // 敗北
        CHANGE_EVENT2	mg_loseg
        SEEK_END
    } ELSIF $_is_fast_or_slow'>0' {
        IF $_lose_count'==0' 
            CHANGE_EVENT2	mg_loseb_slowfast0
        ELSE    
            CHANGE_EVENT2	mg_loseb_slowfast1
    } ELSIFSTR $_result IS 'LOSEB_RK' {
        IF $_lose_count'==0' 
            CHANGE_EVENT2	mg_loseb_rk0
        ELSE    
            CHANGE_EVENT2	mg_loseb_rk1
    } ELSIFSTR $_result IS 'LOSEB_SC' {
        IF $_lose_count'==0' 
            CHANGE_EVENT2	mg_loseb_sc0
        ELSE    
            CHANGE_EVENT2	mg_loseb_sc1
    } ELSE {
        IF $_lose_count'==0' 
            CHANGE_EVENT2	mg_loseb_pa0
        ELSE    
            CHANGE_EVENT2	mg_loseb_pa1
    }
    
}
STOP_BGM	180 0 

DENY_SKIP
WAIT 30
MG_DOJO CLOSE_CUTIN
MG_DOJO RESHOW_RPC
MG_DOJO RESHOW_FIG
WAIT 60
MG_DOJO DIGEST_PR_CRACK
WAIT 40