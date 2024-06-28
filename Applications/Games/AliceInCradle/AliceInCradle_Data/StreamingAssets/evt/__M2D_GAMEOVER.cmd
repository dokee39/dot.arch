// ゲームオーバー処理
// 1.死ぬ前にいたマップ
// 2.変数いろいろ
// 3.fatal_key
<NOLOAD>
_premap=$1 
_killed_by_enemy=~$2&1
_killed_by_worm=~$2&2

rm=~$2&2
_fatal_key=$3
_do_not_fatal=~sensitive_level>=2
// ベビードールを戻す
_turnback_outfit=1
STOP_LETTERBOX
DENY_SKIP
STOP_GMAIN
STOREFLUSH 
CHANGE_EVENT2 __M2D_FINISH_SUMMONER 1

//ADD_MAPFLUSH_FLAG

_evt=
_jumpto=
_danger_dep=0
_nowait=0
_ev1=
_bgm=
IF 'PVV<5' {
    GAMEOVER_MAP_JUMP_TO forest_01
    _evt=s00_5c
    _jumpto=Ev_s00_5c.b
    _danger_dep=10
    _bgm=BGM_suzumusi
    _ev1=0
    IF 'GFC[NOE1]<15' {
        _ev1=1
    }
    IF $_killed_by_enemy'||'$_killed_by_worm {
        GFC_SET_MX PVV0_KILLED 2
    } ELSE {
        GFC_SET_MX PVV0_KILLED 1
    }
    GFC_SET_MX	NOE1 15 
}
IF 'PVV==102&&GFC[IXA1]==5' {
    // イクシャチュートリアル
    GAMEOVER_MAP_JUMP_TO forest_senzyot
    _jumpto=     
    _bgm=BGM_ixia
}
IF 'PVV==103&&GFC[WLR0]==2' {
    IFSTR $_premap IS 'forest_swamp' {
        // 沼でのバトル
        GAMEOVER_MAP_JUMP_TO forest_ostrea_swampt
        _jumpto=Ev_s12_defeat.b
        _evt=s12_9b
        _nowait=1
    }
}
IFSTR $_premap IS 'sacred_0' {
    GAMEOVER_MAP_JUMP_TO city_slam
    _gameover_now_city_slam=1
    _jumpto=Ev_slam_ground_r.Lb
        _evt=___sacred/_go2city
        _nowait=1

}
IFSTR $_bgm ISNOT '' {
    IFSTR $_evt ISNOT '' {
        SCN_MANUAL_BGM_REPLACE $_bgm
    }
}

REEL_FLUSH 1
WAIT_FN REELMNG
WAIT_FN NM2D_GAMEOVER // 新しいマップがロードされるまで待機
START_GMAIN
STOP_GHANDLE
FLUSHED_MAP
DANGER $_danger_dep 1
VALOTIZE 1
IFSTR $_bgm ISNOT '' {
    IFSTR $_evt IS '' {
        LOAD_BGM $_bgm
        REPLACE_BGM	0 30 0
    }
}


WAIT 1
IFSTR $_jumpto ISNOT '' {
    #MS_SOFT_ % '>>['$_jumpto'] #; '
}


IFSTR $_fatal_key ISNOT '' {
    IF '!'$_do_not_fatal {
        CHANGE_EVENT ___Other/fatal $_fatal_key
    }
}

IF $_turnback_outfit {
    NOEL_OUTFIT_TURNBACK
}
IF '!'$_nowait {
    WAIT 10
}
IFSTR $_evt ISNOT '' {
    CHANGE_EVENT	$_evt $_ev1
}

WAIT 60
