IF 'PVV==105&&GFC[IXA1]<4' {
    %DEFINE_ON_POINT Ev..Ev_near_Bench
    /* ___ reporter105_near ___ */
    {
        stand = {
            #CALL	reporter105 talk
            
        }
    }
    %DEFINE_ON_POINT
    /* ___ reporter105 ___ */
    {
        %SIZE 12 78
        %AIM L
        %PT	Ev..Ev_bench -44,0
        
        %MOBG	man_elf_young_reporter stand
        talk = 105/scl_entrance_reporter
    }
}



IF 'PVV==106' {
    /* ___ woman_elf_thin_student_1 ___ */
    {
        %SIZE 12 78
        %AIM R
        %MOBG	woman_elf_thin_student_1 stand
        %PT Ev_door1l -20,0
        %AIM R
    }
    /* ___ woman_elf_thin_sudent_10 ___ */
    {
        %SIZE 12 78
        %AIM R
        %MOBG	woman_elf_thin_sudent_10 stand
        %PT Ev_door1l 20,0
        %AIM L
    }
    /* ___ 105_scl_hall_mob_t01 ___ */
    %DEFINE_ON_POINT Ev..Ev_door1l
    {
        %TALK_TARGET_TTT 1
        talk = ___city/106_scl_entrance_t00 woman_elf_thin_student_1 woman_elf_thin_sudent_10 
    }
    %DEFINE_ON_POINT  
}

