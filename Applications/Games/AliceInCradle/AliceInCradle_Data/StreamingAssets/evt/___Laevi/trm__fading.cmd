// the_room の入室／退出用モジュール
// 1: 入手時 TRUE
IFNDEF 1 1=TRUE

#SND_LOAD ev_trm 
DENY_SKIP 
STOP_GMAIN
PR_CURE 0 0 0 1 1 // 衣服と卵クリア
IF $1 {
    // 入室
    SND cloth_trm_off
    WAIT 240
    #< % >
    PR_OUTFIT BABYDOLL
} ELSE {
    SND cloth_trm_on
    WAIT 180
    #< % >
    PR_OUTFIT NORMAL
}
trm_activated!
trm_tuto_watched!

START_GMAIN