// 道場ゲーム チュートリアル

//  IF DEBUG {
//      MG_DOJO DEBUG_SET  TUTO_W4
//      GOTO _DEBUG_P4
//  }
HKDS	dj C @R

DENY_SKIP

WAIT 20
MSG dj_01
MSG_HIDE

MG_DOJO G_PROGRESS

WAIT 30
SND dojo_clap_small
MSG dj_02
MSG_HIDE


MG_DOJO G_PROGRESS


WAIT 30
SND dojo_clap_small
MSG dj_03
MSG_HIDE


MG_DOJO G_PROGRESS

WAIT 30
SND dojo_clap_small

MSG dj_04
MSG_HIDE

    
LABEL _DEBUG_P3
MG_DOJO G_PROGRESS


WAIT 30
SND dojo_clap_small
MG_DOJO TUTO_SHOW_ENEMY_RPC
WAIT 100

MSG dj_05
MSG_HIDE


IF 0 {
    LABEL _DEBUG_P4
    MG_DOJO TUTO_SHOW_ENEMY_RPC
}
MG_DOJO G_PROGRESS

IFSTR $_result IS 'win' {
    // 勝利
    HKDS	dj C @R
    SND dojo_clap_small
    WAIT 60
    MG_DOJO CURE_CRACK
    WAIT 40
    MSG dj_10
    MG_DOJO LEARN

} ELSE {
    CHANGE_EVENT2	___dojo/mg_loseb
    // 敗北シーケンス
}
