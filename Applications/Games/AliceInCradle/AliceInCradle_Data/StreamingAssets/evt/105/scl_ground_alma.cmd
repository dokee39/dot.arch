GREETING	L 40
TALKER	n L   
TALKER	l R   

IF '(GFC[ALM1]&1)==0' {
    

    LOAD_BGM	BGM_sohunosyosai
    STOP_BGM	200 0
    WAIT 10

    HKDS	n CCLT #<%>  
    MTL ENGINE AlmaPVV105 TALKED

    MSG	n_00
    DOTL 

    WAIT_MOVE
    ENGINE AlmaPVV105 WAIT
    WAIT 10
    #MS '## w10 @L'
    PE ZOOM2 80
    WAIT 10

    GFC_SET ALM1 |=1

    PIC   n a_1/a22__F1__f1__m1__b1__u3    
    PIC   l l1/a0L1R2__F1__m1__b3_ua2    
    PIC_MP	l EXC 

    HKDS	n '' ''  
    TL 30 REPLACE_BGM	40 50 0
    MSG	l_01

    DOTL
    PIC   n a_1/a22__F1__f1__m4__b1_ua    

    MSG	n_02

    PIC   l l1/a0L3R2__F1__m1__b6_ua2    
    PIC_MP  l   SWT2|BLS
    PIC_MOVEA	l 4 HOP

    //あこがれの人からの称賛にわたわたして否定するアルマ
    MSG	l_03
    PIC   l l1/a0L3R3__F1__m1__b2_u1    
    MSG	l_04

    PIC   n a_1/a22__F1__f1__m1__b1__u3    
    MSG	n_04

    PIC   l l1/a0L1R1__F1__m1__b4_u1    
    MSG	l_05

    MSG_HIDE	
    WAIT 25  


    PIC   l l1/a0L1R2__F1__m1__b8_ua    
    MSG	l_06

    PIC   n a_2/a0L1R3__F2__f2__m1__b5_u3
    MSG	n_07

    PIC   l l1/a0L2R2__F1__m1__b3_u2    
    PIC_MP  l PLE|BLS

    STOP_BGM	150 
    MSG	l_08


    REPLACE_BGM	90 90 1

} ELSE {
    // 2度目
    WAIT 40
    ENGINE AlmaPVV105 TALKED
    ENGINE AlmaPVV105 WAIT
    PIC   n a_1/a00L3R1__F1__f1__m1__b1__u3    
    IF '(GFC[ALM1]&2)==0' {
            
        GFC_SET ALM1 |=2

        PIC   l l1/a0L2R2__F1__m1__b8_ua    
        PIC_MP  l SWT2
        MSG	l_100

        PIC   n a_1/a22__F1__f1__m4__b1_u0    
        MSG	n_101

        PIC   l l1/a0L2R3__F1__m1__b3_ua2    
        PIC_MP  l PLE
        MSG	l_102
    }

    PIC   l l1/a0L2R2__F1__m1__b4_u2    

    MSG	l_103

}