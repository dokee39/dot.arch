SF_SET ISUPPLY_forest_hiroba_obj_over_pvv1_Supply_amethyst_G0 1
// 採掘が済んだ
IF 'PVV>=1 || GFC[NOE1]>=5' SEEK_END

ALLOW_SKIP
ALLOW_EVENTHANDLE_KEY
GFC_SET_MX	NOE1 5
STOP_LETTERBOX
WAIT 70

START_LETTERBOX
#MS_ % 'F w20 P[stand_ev~]'

TALKER n R
WAIT 30
PIC   n a_1/a00L1R1__F1__f1__m1__b2__u3    
MSG	n_00

PIC_HIDE_ALL	   

WAIT 20
HKDS	n CT #<%>

DEF_CURMAP _curmap
IFSTR $_curmap IS forest_hiroba
    #MS_ % 'F >>[Ev_s00_1a_2.W -2,0: 140] P[beware] w20 '
ELSE
    #MS_ % 'F >+[60,0: 140] P[stand_ev~]'

MSG	n_01

CHANGE_EVENT2	s00_1a_trauma 5


IF 'ItemHas[fruit_cherry0]==0 &&ItemHas[fruit_apple0]==0 ' {
    PIC   n a_1/a00L3R1__F1__f1__m1__b3__uo    
    MSG	n_03
}
QUEST_FINISH p000_break_wall  
AUTO_SAVE
REPLACE_BGM	100 