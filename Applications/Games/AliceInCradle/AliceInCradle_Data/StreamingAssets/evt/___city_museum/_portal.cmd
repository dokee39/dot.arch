MSG_PREFIX ow '<s3>'
TALKER_REPLACE	ow museum talk_mob_m2 

IF '(GFC[MUS0])==0' {
    // 初回
    CHANGE_EVENT	___city_museum/t00
    
}
IF '(GFC[MUS0])==1' {
    CHANGE_EVENT	___city_museum/t01
}


GREETING	R 10
HKDS	ow LT #<owl>
TALKER	n L   
HKDS	n CCRT #<%>  


LABEL LETSTALK


SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK museum

_already=~SfEvt[___city_museum/t_camera]
SELECTARRAY &&EvTitle_camera camera '' $_already

_already=~SfEvt[___city_museum/t_structure]
SELECTARRAY &&EvTitle_structure structure '' $_already



SELECTARRAY &&Cancel  
SELECT -1 _evt

IFSTR $_evt IS '&&Cancel' {
    SEEK_END
}
_stop=0
SELECT_RESULT_TO_LOG
ALLOW_SKIP
CHANGE_EVENT2 '___city_museum/t_'$_evt
LOG_RECORD
DOTL
IF $_stop {
    GOTO SEEK_END
}

GOTO LETSTALK

