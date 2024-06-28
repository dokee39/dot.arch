
%TALK_TARGET_TTT 1
IF 'PVV==105||PVV==106' {
    /* ___ woman_elf_thin_student_sister_0 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_thin_student_sister_0 stand
        %PT Ev_bench0 18,0
        %AIM L
    }
    /* ___ woman_elf_thin_student_sister_1 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_thin_student_sister_1 stand
        %AIM R
        %PT Ev_bench0 -18,0
    }
    /* ___ scl_entrance_t02 ___ */
    %DEFINE_ON_POINT Ev..Ev_bench0
    {
        talk = ___city/scl_entrance_t02 woman_elf_thin_student_sister_0 woman_elf_thin_student_sister_1 
    }
    %DEFINE_ON_POINT  

}


IF 'PVV==105' {
    /* ___ man_elf_young_student ___ */
    {
        %SIZE 12 78
        %MOBG	man_elf_young_student stand
        %PT Ev_stair1 -48,0
        %MOVE	WALKAROUND_LR  
        %AIM L
        talk = ___city/105_scl_entrance_t03 man_elf_young_student

    }

}



/* ___ woman_elf_thin_student_sister_2 ___ */
{
    %SIZE 12 78
%MOBG	woman_elf_thin_student_sister_2 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}

/* ___ woman_elf_thin_sudent_12 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_12 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}


/* ___ man_elf_young_student_1 ___ */
{
    %SIZE 12 78
    %MOBG	man_elf_young_student_1 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}

IF 'PVV>=106' {
    /* ___ woman_elf_thin_sudent_9 ___ */
    {
        %SIZE 12 78
        %PT Ev_entrance_r
        %AIM LR
        %MOVE WALKAROUND_LR '' 0.5
        %MOBG	woman_elf_thin_sudent_9 stand
    }

}