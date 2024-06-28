// 道場ゲーム チュートリアル

//  IF DEBUG {
//      MG_DOJO DEBUG_SET  TUTO_W4
//      GOTO _DEBUG_P4
//  }
HKDS	dj C @R
_prog=0
_wait=80
LABEL _REPEAT
// ========================
DENY_SKIP
WAIT $_wait
LABEL _GAME_AGAIN
DENY_SKIP
MG_DOJO G_PROGRESS



IFSTR $_result STARTS 'LOSE' {
    CHANGE_EVENT2	___dojo/mg_loseb
    IF $_lose_count'==-1' {
        SEEK_END
    }
    GOTO _GAME_AGAIN
}

// win
_prog=~$_prog+1
IF $_prog'<3' {
    SND dojo_clap_small
    MG_DOJO WAIT_FOR_GAME_BGM
    WAIT 10
    ALLOW_SKIP
    HKDS	dj C @R
    IF $_prog'==1' {
        MSG dj_1_00
    } ELSIF $_prog'==2' {
        MSG dj_2_00
    }
    _wait=60
    GOTO _REPEAT
}
// ========================
// クリア
DENY_SKIP
MG_DOJO G_PROGRESS
WAIT 90
WAIT_BUTTON	 

MG_DOJO CLOSE_CUTIN
WAIT 40
MG_DOJO LEARN
WAIT 10