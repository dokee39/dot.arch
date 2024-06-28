
/* ___ staff1 ___ */
{
    %SIZE 12 78
    %MOBG	woman_bst_racoon_1 stand
    %PT Ev_staff1.b 35,-8
    %MOBG_CLIP Clip_counter
    %AIM L
    // talk = ___city_farm/_portal
}


IF 'PVV==105&&GFC[IXA1]<4' {
    /* ___ student_105_0 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_student_8 stand
        %PT	Ev_left_clmn.b -1 0
        %AIM L
    }

    /* ___ student_105_1 ___ */

    {
        %SIZE 12 78
        %MOBG	woman_elf_oneesan_student stand
        %PT	Ev_left_clmn.b  -35 0
        %AIM R
        talk = 105/scl_hall_center_mob_00
    }
    /* ___ student_105_2 ___ */

    {
        %SIZE 12 78
        %MOBG	woman_elf_thin_sudent_9 stand
        %PT	Ev_left_clmn.b  22 0
        %AIM L
    }
    %DEFINE_ON_POINT    Ev..Ev_left_clmn
    /* ___ 105_mob ___ */
    {
        stand = {
            #CALL student_105_1 talk
        }
    }
    %DEFINE_ON_POINT
}

/* ___ student_2 ___ */

{
    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_5 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}

/* ___ student_3 ___ */

{
    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_8 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}




IF 'PVV==106' {

    /* ___ woman_elf_student_black ___ */
    {
        %TALK_TARGET_TTT 1
        
        %SIZE 12 78
        %MOBG	woman_elf_student_black stand
        %PT Ev_door0 80,0
        %MOVE WALKAROUND_LR
        talk = ___city/106_scl_hall_mob_t00 woman_elf_student_black
    }

}