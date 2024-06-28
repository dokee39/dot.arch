TALKER	n L   
TALKER	p R   
GREETING	L 15


IF 'GFC[PRM3]==0' {
    PIC   n a_1/a22__F1__f1__m1__b1__u1    
    PIC   p p/a11__F1__f1__m1__b1_u0    
    MSG	n_00

    PIC   p p/a21__F1__f1__m1__b2_ua    
    PIC_MP	p PLE 

    MSG	p_01
    GFC_SET_MX	PRM3 1 
    LOAD_LAYER Ev_pvv11_treasure_box
    DENY_SKIP
    WAIT 2
    #< Treasure_mg_groundbomb >
    #MS  '## w60 #~'
    #PTCST general_circle_t 'maxt=50'
    SND itembox_appear
    #<
    #MS 'P[stand_nobag] @L'
    #MS_ % 'w10 @L'

    LP_ACTIVATE	Ev..WalkDecline_Ev_LL
    
    WAIT_MOVE
} ELSE {

    PIC   n a_3/a0__F1__f3__m1__b4_uo   
    PIC   p p/a11__F1__f1__m1__b1_u0    
    PIC_MP  n QUE
MSG	n_02

    PIC   p p/a11__F2__f2__m1__b1_u0    

MSG	p_03
 
}