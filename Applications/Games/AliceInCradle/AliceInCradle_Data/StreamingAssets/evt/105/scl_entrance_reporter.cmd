HKDS	mb LT #<reporter105>  
TALKER_REPLACE	mb Mob talk_mob_m4 

HKDS	n CCRT #<%>  
#MS '@R'

GREETING	R  20
WAIT 25

IF 'GFC[MOB0]==0' {
    GFC_SET MOB0 |=1


    MSG	mb_00


    MSG	mb_02


    MSG	n_03


    //わざと聞いてないふり
    MSG	mb_04


    MSG	n_05


    MSG	mb_06


    MSG	n_07


    MSG	mb_08

    _last_rep_msg=mb_09
    _last_noel_msg=n_09

} ELSE {

    //二回目以降
    _last_rep_msg=mb_10

    _last_noel_msg=n_11
}

MTL MSG_SKIP
MSG	$_last_rep_msg
TALKER	n R   
HKDS	n '' ''  

PIC   n a_3/a2__F1__f3__m5__b1_u0    
PIC_MP	n SWT2 

MSG	$_last_noel_msg

PIC_HIDE_ALL	 

#MS_ % 'P[run] >+[70,0 :20] P[walk~] >+[60,0 :40]'

WAIT_MOVE
