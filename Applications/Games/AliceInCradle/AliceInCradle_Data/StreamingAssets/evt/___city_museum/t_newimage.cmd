// 1: count
HKDS	ow CCLT @LBOUT
_pr_ms='w20 @R ! P[walk~] >>[Ev_sphere -35,0 :55] ? P[stand_ev~] @L'

IF $_museum_category_id'!=500' {
    

    MSG	ow_00
    WAIT 50

    PIC_FADEOUT	#9 60
    #MS_ % $_pr_ms
    WAIT 30
    PE ZOOM2 60
    MUSEUM_SLIDESHOW

    HKDS	ow LT #<owl>


    IF $_museum_category_id'>=10&&(GFC[MUS0]&7)<=5' {
        MSG	ow_02
        PIC_FILL #9 DARK
        PIC_FADEIN #9 50
        INIT_MAP_MATERIAL city_in_museum 1
        GFC_SET	MUS0 |=6 
        WAIT 60
        PE ZOOM2 1
        PE ZOOM2 -1
        WAIT_FN MAP_TRANSFER
        WAIT 2
        START_GMAIN
        START_GDRAW
        #< owl >
        PIC_FADEOUT #9 50
        #MS_ % '>>[Ev_sphere -35,0]  P[stand_ev~] @L ## #~'
        WAIT 20
    } ELSE {
        MSG	ow_01
    }
    CHANGE_EVENT2	___city_museum/_get_reward $1
} ELSE {

    MSG	ow_10
    WAIT 30
    PIC_FADEOUT	#9 60
    #MS_ % $_pr_ms
    WAIT 20
    PE ZOOM2 60
    MUSEUM_SLIDESHOW

    IF '(GFC[MUS0]&8)==0' {

        HKDS	ow LT #<owl>
        HKDS	n CCRT #<%>
        MSG n_11
        MSG ow_12
        @_PIIN
        MSG n_12 I
        MSG ow_13 I
        MSG n_14
        PIC_HIDE_ALL	 
        
    }
    PE ZOOM2 -1
    #MS_ owl '##'
    WAIT 20
    MSG ow_15
    WAIT 20

    CHANGE_EVENT2	___city_museum/_get_reward $1 

    IF '(GFC[MUS0]&8)==0' {
        PIC_FILL #9 DARK
        PIC_FADEIN #9 50
        GFC_SET MUS0 |=8
        WAIT 60
        INIT_MAP_MATERIAL city_in_museum 1
        WAIT_FN MAP_TRANSFER
        WAIT 2
        START_GMAIN
        START_GDRAW
        #MS_ % '## #; >>[Ev_sphere -35,0] @L P[stand_ev~] '
        PIC_FADEOUT #9 60
        WAIT 40
        #< owl >

    }
}


#MS_ % '##'