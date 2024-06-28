// ヌシ戦

_has_burst=~GFC[IXA1]&4>0
_event_wathed=~(GFC[IXA1]&3)>=2
IF $_event_wathed {

    STOP_LETTERBOX
    REPLACE_BGM	40 0 0
    BGM_GOTO_BLOCK A
    BGM_OVERRIDE_KEY battle_prepare

    IF $_has_burst' && (GFC[IXA1]&8)==0' {
        START_LETTERBOX
        PIC_FILL	#0 DARK
        PIC #3 still/nusi_bg_blur S
        PIC_FADEIN	#3 40
        WAIT 50
        GOTO _NUSI_8
    
    }
    ENGINE IxiaPVV104 1
    SUMMONER_TYPE forest_nusi_coroseum NO_EFFECT NO_BORDER NO_HIDE_LAYER
} ELSE {
    START_LETTERBOX
    <LOAD>
    GFC_SET	IXA1 (GFC[IXA1]&4)|2
    NEED_FINE_DEPERTURE
    

    PIC_FILL	#20 ff:#000000
    PIC_FADEOUT	#20 60
    PIC_FILL	#0 DARK

    PIC #1 still/nusi_bg_ixia S

    PIC #2 still/nusi_bg_noel 

    PIC #3 still/nusi_bg_blur

    // ====================================
    // 道の先へ進む
    // ボスに捕らわれたイクシャを発見する。
    // イクシャは檻のような触手に閉じ込められている。
    // ボスはホーリーバーストを遠回りして手に入れていないと倒すことができない。




    WAIT 15
    PIC #7 still/nusi_ixia_a S
    PIC_FADEIN	#7 40
    PIC_MOVE2	#7 140 180 140 -220 180 ZSIN



    TALKER i CT
    HKDS	i CT @RT TT
    
    TALKER n CRB
    HKDS	n CRB @RBOUT TT
    MSG	i_00
    MSG	n_01

    MSG_HIDE	  

    PIC #8 still/nusi_ixia_b0 S
    PIC_FADEIN	#8 70
    PIC_MOVE2	#8 -270 -240 -270 60 170 ZSIN

    WAIT 40
    MSG	i_02

    HKDS	n CRB @RBOUT 
    MSG	n_03

    MSG_HIDE	  


    WAIT 10

    PIC_FADEOUT	#7 70
    PIC_FADEOUT	#8 70

    WAIT 10

    PIC_FADEOUT	#3 90

    PIC_MOVE2	#1 0 -50 0 50 500 ZSIN
    PIC_MOVE2	#2 0 -120 0 -460 500 ZSIN

    WAIT 13
    SND  nusivo_grawl
    PIC_MOVEA	#1 15 SCARY2
    PIC_MOVEA	#2 15 SCARY2
    WAIT 15
    PIC_MOVEA	#1 70 SCARY
    PIC_MOVEA	#2 70 SCARY
    WAIT 50
    REPLACE_BGM	40 0 0
    BGM_GOTO_BLOCK A
    BGM_OVERRIDE_KEY battle_prepare
    HKDS	n R @CB 
    HKDS	i CCRT @L TT
    MSG	n_04
    MSG_HIDE	  
    
    WAIT 20

    IF '!'$_has_burst {

        PIC #8 still/nusi_ixia_b0 S
        PIC_FADEIN	#8 70
        PIC_MOVE2	#8 -270 -10 -270 60 50 ZSIN

        // ここからバーストを所持しているかどうかで分岐
        // ====================================
        // 2-A: バーストを所持せずに到達
        MSG	i_05
        PIC #8 still/nusi_ixia_b1 S
        PIC_MOVEA	#8 15 SCARY2
        SND nusi_inject
        TL 15 PIC_MOVEA	#8 22 SCARY
        PIC_FLASH	#9 0 6 50 ff:#FF47A0
        // イクシャ口をふさがれる
        MSG	i_05b
        CLEARTL

        
        MSG	n_06


        PIC #8 still/nusi_ixia_b2 S
        PIC_MOVE	#8 -270 60 
        PIC_MOVEA	#8 30 SCARY
        MSG	i_07

        
        MSG	n_08
        QUEST_PROGRESS p104_ixia 2

    } ELSE {
        LABEL _NUSI_8
        <LOAD>
        GFC_SET	IXA1 (GFC[IXA1])|8
        SND nusi_inject
        PIC #8 still/nusi_ixia_b1 S
        PIC_FADEIN	#8 10
        PIC_MOVE	#8 -270 60 0
        PIC_MOVEA	#8 22 SCARY
        PIC_FLASH	#9 0 6 50 ff:#FF47A0
        HKDS	i CCRB @L TT

        // ====================================
        // 2-B: バーストを所持してに到達
        MSG	i_10


        HKDS	n RB @BOUT 
        MSG	n_11


        // イクシャ口をふさがれる

        
        PIC #8 still/nusi_ixia_b2 S
        PIC_MOVEA	#8 30 SCARY
        MSG	i_12

        MSG	n_13

        MSG_HIDE	
        PIC_HIDE #8 40
        WAIT 40


        PIC #3 still/nusi_bg_blur
        PIC_FADEIN	#3 80

        PIC #5 still/nusi_noel_d S

        PIC_MOVE2	#5 260 750 260 -150 600 ZSIN
        PIC_FADEIN	#5 60

        HKDS	n CCLT @R
        MSG	n_14
        MSG_HIDE	  
        
        WAIT 15

        SND nusi_inject
        PIC #8 still/nusi_ixia_b1 S
        PIC_MOVE	#8 -270 60 0
        
        TL 15 PIC_MOVEA	#8 22 SCARY
        PIC_FLASH	#9 0 6 50 ff:#FF47A0
        MSG	i_14

        DOTL
        PIC_SWAP #5 #8
        QUEST_PROGRESS p104_ixia 3 H
        MSG	n_15
        //  ========================
    }
    MSG_HIDE	

    WAIT 20
    DENY_SKIP
    PIC_FILL	&9 DARK
    PIC_FADEIN &9 25
    
    WAIT 25
    PIC_HIDE_ALL	# 1
    WAIT 2
    PIC_FADEOUT &9 40
    
    #MS_ % '>+[150,0 <<0.12]'
    

    WAIT 20
    ENGINE IxiaPVV104 1


    #MS_ ixia '##'
    WAIT 20
    SUMMONER_TYPE forest_nusi_coroseum NO_EFFECT NO_BORDER NO_HIDE_LAYER
    ENGINE IxiaPVV104 2
    WAIT 190 

    #MS_ ixia '#~'

  
} 



IF '!'$_has_burst {
    TUTO_MSG	Tuto_goback
    TUTO_POS	C T 
}