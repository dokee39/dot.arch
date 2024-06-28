
MSG_PREFIX ow '<s3>'
TALKER_REPLACE	ow museum talk_mob_m2 
HKDS	n CCRT #<%>  

IF '(GFC[MUS0])==1' {
    CHANGE_EVENT	___city_museum/t02
}

#MS_ % '= >>[Ev_sphere -30,0 <<0.04] P[interact] @R'

IF '(GFC[MUS0])==4'  {
   CHANGE_EVENT2 ___city_museum/t_newimage_first
} ELSE {

    WAIT 15
    PIC_FILL	#9 DARK
    PIC_FADEIN	#9 60
    WAIT 90
    PIC_FINE    #9
}

LP_ACTIVATE	 Museum
IF $_museum_updated'>0' {
    museum_noimage=1
    <LOAD>
    #SND_LOAD ev_museum
    _count=$_museum_updated
    LABEL LOOP0
    _museum_updated=~$_museum_updated-1
    PIC_FLASH	#10 5 0 40 ff:#CECCBD
    SND museum_old_camera
    WAIT 40
    IF $_museum_updated'>0'
        GOTO LOOP0

    WAIT 30
    CHANGE_EVENT2 ___city_museum/t_newimage $_count


} ELSE {
    <LOAD>
    PIC_FADEOUT	#9 60
    WAIT 20
   CHANGE_EVENT2 ___city_museum/t_noimage

}
