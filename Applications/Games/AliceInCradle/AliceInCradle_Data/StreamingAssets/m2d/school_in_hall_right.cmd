%DEFINE_ON_POINT row..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 40
    }
}  
/* ___ student_0 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_pocha_2 stand
    %PT	Ev_downstair 25 0
    %AIM L
    %MOVE	WALKAROUND_LR  
    
}



/* ___ student_1 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_thin_student_9 stand
    %PT	Ev_door0r -18 0
    %AIM R
    
}
/* ___ student_3 ___ */
{

    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_6 stand
    %PT	Ev_door0r 18 0
    %AIM L
}


IF '(PVV==105&&GFC[IXA1]>=4)||PVV==106' {

    /* ___ 105_scl_hall_mob_t01 ___ */
    %DEFINE_ON_POINT Ev..Ev_door0r
    {
        %TALK_TARGET_TTT 1
        talk = ___city/105_scl_hall_mob_t01 student_1 student_3 
    }
    %DEFINE_ON_POINT  

} ELSE {

    /* ___ student_1 ___ */
    %POS_RANDW
    %MOVE	WALKAROUND_MAP  
    /* ___ student_3 ___ */
    %POS_RANDW
    %MOVE	WALKAROUND_MAP  
}

/* ___ student_2 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_oneesan_2 stand
    %POS_RANDW
    %MOVE	WALKAROUND_MAP  
    
}

