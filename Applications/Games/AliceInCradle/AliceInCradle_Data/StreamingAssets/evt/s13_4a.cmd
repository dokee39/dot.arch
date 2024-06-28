
START_LETTERBOX
LOAD_BGM	BGM_morinokioku 
//GOTO TALKARMY

// PIC_B	#0 bg/forest_tree_bg  '' DARK


WAIT 40
// 4-A 撃破した
ALLOW_SKIP
TALKER i R
TALKER n L
PIC   i i/a00d__F1__f1__m4__b3_u1    
PIC   n a_2/a0L2R1__F2__f1__m2__b1_u2    

MSG	n_00

PIC   i i/a00d__F2__f2__m1__b5_u3    
TL 50 PIC_MOVE	i D+0 D-200 40 ZPOW
TL 50 PIC_FADEOUT i 40
TL 75 SND	pr_down

MSG	i_01

#MS_ ixia 'P[weakdown]'
DOTL

PIC   n a_3/a0__F1__f3__m3__b2_uo    
PIC_MOVEA	n 20  SCARY
PIC_MP	n EXQ

// イクシャ気を失う
MSG	n_02
MSG_HIDE

// 暗転 ========================
PIC_HIDE_ALL	 
#MS_ cam_left '##'

PIC_FILL	&1 DARK
PIC_FADEIN	&1 60

DENY_SKIP
SND foot_leafground_ev2

WAIT 80

CHANGE_EVENT2	s13_4b 1

WAIT 10


// flag
QUEST_FINISH p104_ixia
GFC_SET	IXA1 0 
PVV 105

