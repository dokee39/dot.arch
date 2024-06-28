

// 2-B 近付く
// ヘビに巻き付かれてるイクシャ
HKDS	noelcane RB #<%>  
TALKER_REPLACE	noelcane NoelCane talk_cane
TALKER_REPLACE	ixiacane IxiaCane talk_cane

HKDS	ixiacane LB #<ixia>  

MTL MSG_SKIP
MSG	noelcane_00 D

MTL MSG_SKIP
MSG	ixiacane_01 D
MSG_HIDE
WAIT 3
STOP_GMAIN

HALF_BGM
@___Other/still  still/still__0002
WAIT_BUTTON	 

HKDS	i CLT @RB TT 
HKDS	n LB @L TT 

MSG	i_02


MSG	n_03


MSG	i_04


MSG	n_05 1

ENGINE IxiaPVV102 1

#VANISH
