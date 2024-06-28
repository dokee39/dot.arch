GREETING	L  18

#< Barten >
#MS 'q ## @L w40 P[bar_stand~]'
PE ZOOM2 60

_def=0
_first=1
WAIT 20
LABEL RESHOW
TALKER	bt R   
TALKER	n L   
IF 'SerHas[DRUNK]' {
    PIC   n a_3/a1__F1__f3__m6__uo    
    PIC_MP	n BLS 
    
} ELSE {
    PIC   n a_1/a22__F1__f1__m1__b1__u0    
}
PIC   bt P0/a0L1R2__F1__e1    
HKDS	bt '' '' 

IF '(GFC[MOB9])==0&&'$_first {
    GFC_SET MOB9 8 
    _first=0
    MSG bt_00   
}




LABEL LETSTALK
SELECTARRAY_CLEAR

#< % > 
// SELECTARRAY &&Select_buy_order _ORDER
SELECTARRAY &&Select_buy_order _ORDER_RESTAULANT
IF 'SerHas[DRUNK]' {
    SELECTARRAY &&Select_drunker ___city_bar/_barten_t_drunk
} ELSE {
    IF 'GFC[BRT0]==0' {
        SELECTARRAY &&Select_ask_you_are_monster0 ___city_bar/_barten_t00
    }
    IF 'GFC[BRT0]==1' {
        SELECTARRAY &&Select_ask_you_are_monster1 ___city_bar/_barten_t01
    }
    IF 'GFC[BRT0]==2' {
        SELECTARRAY &&Select_ask_you_are_monster2 ___city_bar/_barten_t02
    }
    IF 'GFC[BRT0]==3' {
        SELECTARRAY &&Select_ask_you_are_monster3 ___city_bar/_barten_t03
    }
}
SELECTARRAY &&Cancel _CANCEL C
SELECT_FOCUS $_def

SELECT -1 _sres

// ========================
IFSTR $_sres IS '_ORDER' {

    _def=0

    SHOW_BLURSC
    TALKER bt RR
    PIC_HIDE n
    PIC   bt P0/a0L3R3__F2__e1    
    
    ITEMSTORE city_bar CL
    WAIT 8
    ALLOW_SKIP
    HIDE_BLURSC
    GOTO RESHOW
} ELSIFSTR $_sres IS '_ORDER_RESTAULANT' {

    SHOW_BLURSC
    PIC_HIDE n
    PIC_HIDE bt
    
  DENY_SKIP
    LUNCHSTORE city_bar
    WAIT 4
    ALLOW_SKIP
    HIDE_BLURSC
    GOTO RESHOW
} ELSIFSTR $_sres IS '_CANCEL' {
   GOTO _SKIP
} ELSE {
    _def=0
    CHANGE_EVENT2	$_sres
    GOTO LETSTALK
}
// ========================



// ========================
LABEL _SKIP

#MS 'q w240 P[bar_washing~]'