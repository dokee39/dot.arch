#< Ev_barrel >
START_LETTERBOX


PE ZOOM2 60
#MS '## >>[Ev_speaker]'

#MS_ % 'w50 @L ! >>[Ev_barrel.B 70,0 <<0.07] P[stand_ev~] ?'

HKDS	bt CCLT '#<Ev_barrel>'    
TALKER	n R  

   

WAIT 40
LP_DEACTIVATE	ground..Effector_pot_snd

IF 'GFC[BRTU]>=8' {
    GOTO SECOND
}

// ベルを3回鳴らした
MSG	bt_00 

IF 'GFB[OMORASHI_BAR]' {
    // バーで粗相をした
    
    PIC   n a_3/a1__F1__f3__m2__b1_u1    
    PIC_MP	n BLS|SWT2
    
    MSG	n_00 
    MSG	bt_01 

    PIC   n a_1/a00L1R1__F1__f1__m1__b2__u1    
    PIC_MP	n BLS
    MSG	n_01 

    PIC   n a_1/a22__F1__f1__m1__b3__u0    
    PIC_MP	n BLS|SWT

    MSG	n_02 T


    // => bt_03
} ELSE {
// バーで粗相をしてない
MSG	bt_02 

    
}

PIC_HIDE_ALL    T
HKDS	n R '#<%>'

WAIT 30


// => bt_03
MSG	bt_03 


MSG	n_04 


MSG	bt_05 


MSG	bt_06 R[bt_06_b]



MSG	n_07 


MSG	bt_08 

WAIT 20
TUTO_MSG Tuto_backlog
TUTO_TEMP_FRONT
TUTO_POS C T
WAIT 60


MSG	n_09 

TUTO_REMOVE Tuto_backlog

MSG	bt_10 


TALKER	n R  
HKDS	n    

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP n BLS
MSG	n_11 
HKDS	n R '#<%>'


MSG	bt_12 R[bt_12_b]
PIC_HIDE_ALL ''
WAIT 10
TUTO_MSG Tuto_backlog
TUTO_TEMP_FRONT
TUTO_POS C T
WAIT 30
HKDS	bt LB '@T'
HKDS	n RB '=' TT

#MS '>>[Ev_barrel 0,60]'

MSG	bt_13 

TUTO_REMOVE Tuto_backlog

MSG	n_14 

#MS '>>[Ev_speaker]'
WAIT 30
MSG_HIDE	1
HKDS	bt CCLT '#<Ev_barrel>'    


MSG	bt_14 
GOTO BUY


// 2回目以降 ========================================================================
LABEL SECOND
IF 'GFC[BRTU]>=8&&(GFC[BRTU]&1)==0' {
    GFC_SET BRTU |=1
    MSG	bt_20 
}


// ========================================================================
LABEL BUY

QUEST_REMOVE subquest_new_item_baru

SHOW_BLURSC
PIC_HIDE_ALL T
DENY_SKIP
STOREFLUSH BarUnder 
ITEMSTORE BarUnder
WAIT 4
ALLOW_SKIP
HIDE_BLURSC

WAIT 20

#MS '>>[Ev_barrel 0,0]'
LP_ACTIVATE	ground..Effector_pot_snd

IF $_buy_money'>0' {


    PE_FADEINOUT WHOLERIPPLE 60 70 
    PE_FADEINOUT JAMMING 60 70  1
    PE_FADEINOUT FINAL_ALPHA 60 70  0.3
    SND spconfig_noise
    UIALERT Alert_spconfig_activate
}

IF 'GFC[BRTU]<8' {
    IF $_buy_money'>0'
        WAIT 30
    first_mzh_paper=1
    #CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD
}