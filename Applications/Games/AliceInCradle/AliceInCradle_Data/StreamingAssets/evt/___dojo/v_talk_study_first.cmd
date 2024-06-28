// 1: talk がある場合 1
IFNDEF 1
    1=1
_already=1
// TALKER_REPLACE	dj dojo_teacher talk_mob_m6

_talk=$1
#< sihan >
#MS 'P[fold]'
MSG_HIDE
WAIT 20
__cloth_changed=1

_already=~SfEvt[___dojo/v_talk_study_first]

// debug
ALLOW_SKIP
HKDS	dj R #<sihan>
IF $_talk {
    IF '!'$_already {
        SF_EVT_SET

        MSG	dj_00
    } ELSE {
        MSG	dj_20
    }
    MSG_HIDE
}

PE ZOOM2 -1
#MS '#~'
#MS_ % '## w15 P[walk] >+[-120,0 :100] P[stand]'

WAIT 30
HALF_BGM	1

PIC_FILL	#9 DARK 
PIC_FADEIN  #9 50

WAIT 60
HKDS	n LT @LOUT
HKDS	dj R @ROUT

IF $_talk'&&!'$_already {

    MSG	n_00


    MSG	dj_01

    MSG	n_01
    MSG	dj_02

    MSG	n_02

    MSG_HIDE
    WAIT 30

}
SND cloth_dojo_off
WAIT 200
#< % >
PR_OUTFIT DOJO

#< sihan >
PE  ZOOM2 1
#MS_ % '= >+[20,0 ] P[walk] >+[60,0 :120] P[stand_ev]'
HALF_BGM	0
PIC_FADEOUT  #9 50
WAIT 140

PE  ZOOM2 60
HALF_BGM	1

SHOW_BLURSC
ALLOW_SKIP
IF $_talk {
    
    LABEL _DEBUG
    HKDS	n CCRT @LT
    HKDS	dj RT @ROUT
    IF '!'$_already {
        PIC   &1   dojo_intro/dojo_intro_0   
        PIC_FADEIN	&1 90
        PIC_MOVE2	&1 -210 -120 -210 0 250 ZSIN

        MSG	n_03


        MSG	dj_04
        MSG_HIDE
        WAIT 15
        HKDS	n L @LT


        PIC   &0   dojo_intro/dojo_intro_1   
        PIC_FADEIN	&0 90
        
        PIC_MOVE2	&0 310 -350 310 0 330 ZSIN
        
        MSG	n_05
    } ELSE {
        PIC   &1   dojo_intro/dojo_intro_0   
        PIC_FADEIN	&1 90
        PIC_MOVE2	&1 -210 -120 -210 0 250 ZSIN


        // 着てくる
        MSG	n_21


        MSG	dj_22


        MSG	n_23


        MSG	dj_24

        MSG_HIDE
        WAIT 15
        HKDS	n L @LT


        PIC   &0   dojo_intro/dojo_intro_1   
        PIC_FADEIN	&0 90
        
        PIC_MOVE2	&0 310 -350 310 0 330 ZSIN

        MSG	n_25

        MTL MSG_SKIP
        HKDS	dj '=' '=' 'TT'
        MSG	dj_26


        MSG	n_27


        MSG	dj_28


        MSG_HIDE
        WAIT 15
        HKDS	n '=' '=' 'TT'
        
        MSG	n_29
    }

}
PIC_HIDE_ALL	 
