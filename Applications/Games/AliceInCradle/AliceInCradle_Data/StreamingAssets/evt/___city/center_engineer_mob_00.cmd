TALKER_REPLACE	ma Mob  talk_mob_m1
TALKER_REPLACE	mb Mob  talk_mob_m2
IF $1'==0' {
    GREETING	L 35
    WAIT 20

    HKDS	ma RT   #<engineer_105_0>
    HKDS	mb LT   #<engineer_105_1>

    //若い獣人bに話しかけると、建物の奥から大声がする。
    MSG	ma_00 A

    #MS_ engineer_105_1 '##'
    WAIT 20


    MSG	mb_01 A


    MSG	ma_02 A
    

    MSG	mb_03 A

    PIC_FILL	&9  DARK
    PIC_FADEIN	&9 50
    WAIT 35
    center_engineer_mob_00_playing=1
    #CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD
} ELSE {
    
    PIC_FILL	&10  DARK
     #MS_ engineer_105_1 '>>[Ev_mech_1 -80,0 :0] F'
    #MS '## #; >>[Ev_mech_1 40,0] @L'
    #MS_ % 'q'
    WAIT_MOVE
    WAIT 20
    PIC_FADEOUT &10 50

    #MS_ engineer_105_1 'P[walk] @R >+[35,0 :40] P[stand]'
    #MS_ % 'q >>[Ev_mech_0 60,0] >+[80,0 :0] @R ! >+[-40,0 :60] P[stand_ev] ?'


    WAIT 40
    HKDS	ma CCRB   #<engineer_105_0>
    HKDS	mb LB   #<engineer_105_1>

    //短い暗転、別のモブc出てくる
    //現場を確認して戻ってきた別のモブ獣人c
    MSG	ma_04


    MSG	mb_05


    MSG	ma_06


    MSG	mb_07



    PIC_FILL	&9  DARK
    PIC_FADEIN	&9 50
    WAIT 55
    #MS_ % '##'
    #VANISH engineer_105_0
    #VANISH engineer_105_1

    PIC_FADEOUT &9 50

    center_engineer_mob_00_playing!
    GFB_SET PVV105_CITY_ELEC 1
    WAIT 40
}