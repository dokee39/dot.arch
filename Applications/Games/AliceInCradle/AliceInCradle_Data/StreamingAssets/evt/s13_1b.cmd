// 杖との会話
START_LETTERBOX

#SND_LOAD enemy_nusi
#SND_LOAD ev_msg_noise
SCN_MANUAL_BGM_REPLACE


GFC_SET IXA2 0
GFC_SET IXA1 1
LOAD_BGM	BGM_killing 
STOP_BGM	100 0

#MS_ % 'P[run] >>[Ev_pvv104_exc.b 50,0 <<0.13] P[walk] >+[30,0:40] @RB P[stand_ev]'

#< ixiacane > 
#MS '##'

HKDS noelcane CLT #<%>  
HKDS ixiacane CRB #<ixiacane>  
TALKER_REPLACE	noelcane NoelCane talk_cane
TALKER_REPLACE	ixiacane IxiaCane talk_cane
MSG ixiacane_00  D


CHANGE_EVENT2	 s13_1b_grawl
#< ixiacane > 

WAIT 30
#MS_ % '## w20 @R P[guard]'

MSG noelcane_01  D

WAIT 25
#MS '##'
#MS_ % 'w30 @RB P[stand_ev]'

PE ZOOM2 60
WAIT 40
HKDS ixiacane CRT '='
MSG ixiacane_2  D
WAIT 20
TALKER_REPLACE	ixiacane Army talk_mob_w3_noise
MSG ixiacane_3  D

REPLACE_BGM	20 0 1

TALKER	n L

PIC   n a_2/a0L3R2__F2__f2__m3__b1_uo    
PIC_MP	n EXQ 

MSG	n_04

HKDS	ixiacane R '='
MSG	ixiacane_05  D

PIC   n a_3/a0__F1__f3__m1__b1_u2    
MSG	n_06

PIC_HIDE_ALL	 

WAIT 20
PE ZOOM2_EATEN 80
WAIT 15


HKDS ixiacane CRT  '='
MSG	ixiacane_07  D


#MS_ % 'w5 @R P[run] >>[Ev_pvv104_ixiacane -10,0 <<0.13] snd[cloth_off] @RB ## P[collect] w60'
PE ZOOM2 -1
PE ZOOM2_EATEN -1

WAIT_MOVE
#VANISH
#MS_ % 'snd[get_item] P[run] >+[220,0 <<0.114] P[stand_hardbreathe~]'

WAIT 20
TL 60 MSG_SKIP
HKDS ixiacane CLB  '='
MSG	ixiacane_08   D

MSG_HIDE 1
PIC_FILL	&10 DARK

WAIT 20

HKDS	n C #<%> MONOLOGUE
MSG	n_09

WAIT 35
HKDS	n CLB '=' '='
MSG	n_09b

PIC_FLASH	&11 20 1 54 0xffA2A2A2
// ＝あの日みたいに魔族にぼろぼろに敗れる キーーン
WAIT 100

HKDS	n CR '=' '='
MSG	n_10


WAIT 60
PIC_FADEOUT	&10 70

WAIT 45

HKDS	n R 
PIC   n a_3/a2__F1__f3__m1__b1_u3    
MSG	n_11



MSG_HIDE
PIC_HIDE_ALL
DENY_SKIP
WAIT_MOVE

NIGHTINGALE_SET forest_entrance_grazia
COFFEEMAKER_SET forest_nusi_pre
QUEST_PROGRESS p104_ixia 1 HF
// AUTO_SAVE