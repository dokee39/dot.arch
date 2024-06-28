
_df=~summoner_defeated_this_session[forest_swamp]
GFC_SET	WLR1 0 
ALLOW_SKIP
START_LETTERBOX



WAIT 40

#MS_ % 'P[stand_ev]'

IF "!"$_df {
    STOP_BGM	150 0
    LOAD_BGM	BGM_yocho 
}


TALKER	n L     

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP	n SWT   
MSG	n_00


IF $_df {
    // 敵撃破後に回収済み
    PIC   n a_1/a22__F1__f1__m1__b1__u3    
    MSG n_03
    MSG_HIDE	
    PIC_HIDE_ALL	 
    CHANGE_EVENT	s12_9a 30
}
MSG_HIDE	
PIC_HIDE_ALL	 

#< camupper >
#NO_DECLINE_AREA_CAMERA 

#MS '##'
WAIT 40

LP_ACTIVATE	Ev Extender_enemy103

WAIT 30

// 扉が閉まる
PIC   n a_3/a2__F1__f3__m1__b2_u3    
PIC_MP	n EXC 
TL 30 REPLACE_BGM	100 0 0

MSG	n_01
DOTL
#MS '#~'
#DECLINE_AREA_CAMERA 


PIC   n a_2/a0L2R1__F2__f2__m1__b1_uo    
MSG	n_02

REPLACE_BGM	90 90 1

// SUMMONER_TYPE forest_swamp NO_EFFECT NO_BORDER EVENT_ENEMY NO_HIDE_LAYER
SUMMONER_ACTIVATE forest_swamp
QUEST_PROGRESS p103_walross 3 C
// 戦闘開始