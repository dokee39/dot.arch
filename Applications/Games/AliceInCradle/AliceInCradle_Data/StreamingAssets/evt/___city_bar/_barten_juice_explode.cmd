// 1: おもらしでの発生
// VALOTIZE 0
TALKER	bt R   
TALKER	n L   
#SND_LOAD ev_city

IFNDEF 1 
    _omorashi=0
ELSE 
    _omorashi=$1

IF '!'$_omorashi {
    

    #< Barten >



    #MS '## @L P[bar_stand] '
    WAIT 50

    <LOAD>

    PIC   bt P0/a0L4R3__F3__e1    
    MSG	bt_00 

    PIC   n a_2/a0L2R3__F2__m6__b1_u1    
    PIC_MP	n SWT2|BLS 

    MSG	n_01 
    PIC_HIDE_ALL	 

    #MS_ % '##'

    WAIT 30
    SND pee_zattou

    HKDS	mb1 CLT @LOUT TT 
    TALKER_REPLACE	mb1 '' talk_mob_m0


    HKDS	mb2 B @LOUT TT 
    TALKER_REPLACE	mb2 '' talk_mob_w1
    HKDS	mb3 R @RBOUT TT 
    TALKER_REPLACE	mb3 '' talk_mob_m3



    MSG	mb1_00 BC
    WAIT 25

    MSG	mb2_00  BC

    WAIT 25

    MSG	mb3_00  BC
    WAIT 120
    HKDS	bt L ''

    #MS '##'
    PIC   bt P0/a0L2R1__F2__e3    
    MSG	bt_02 

    PIC_HIDE_ALL	 

    PIC_FILL	#9 DARK
    PIC_FADEIN	#9  50

    WAIT 75 

}

<LOAD>
// 暗転
HKDS	bt B  @BOUT WIDE

#MS_ Barten 'snd[bartender_drink]'
TALKER_REPLACE	bt '' ''
STOP_BGM	70 0

MSG	bt_03 IR[bt_03_b]
WAIT 60

PIC_B	#8 bg/bg_bar_backyard '' bgcolor
PIC_FADEOUT	#9 60
#MS_ Barten 'snd![bartender_drink]'
WAIT 50    
TALKER_REPLACE bt
HKDS	bt '' '' ''

IF '!'$_omorashi {
    PIC   bt P0/a0L4R1__F1__e2    
    PIC   n a_3/a2__F1__f3__m1__b3_u2    
    PIC_MP	n BLS|SWT2

    // @バックヤード
    MSG	bt_100 

    PIC   n a_3/a2__F1__f3__m1__b3_u3    
    PIC_MP	n BLS 
    MSG	n_101 

    PIC   bt P0/a0L1R4__F2__e2    
    MSG	bt_102 

} ELSE {
    HKDS	bt '' '' '' 
    
    PIC   bt P0/a0L4R1__F1__e2    
    PIC   n a_3/a2__F1__f3__m1__b3_u2    
    PIC_MP	n BLS|SWT2

    // @バックヤード
    MSG	___city/_omorashi*bt_406 

    PIC   n a_3/a2__F1__f3__m1__b3_u3    
    PIC_MP	n BLS 
    MSG	___city/_omorashi*n_407

    PIC   bt P0/a0L1R4__F2__e2    
    MSG	___city/_omorashi*bt_408

}

CHANGE_EVENT	___city_bar/_barten_t_omorashi