
%TALK_TARGET_TTT 1

/* ___ woman_elf_pocha_1 ___ */
{
    %SIZE 12 78
    %PT Ev_inn 60,0
    %MOBG	woman_elf_pocha_1 stand
    %MOVE WALKAROUND_LR
}

/* ___ man_elf_young_2 ___ */
{
    %SIZE 12 78
    %PT Ev_inn2 60,0
    %MOBG	man_elf_young_2 stand
    %MOVE WALKAROUND_LR
    %AIM LR
}
/* ___ woman_elf_thin_sudent_5 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_5 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}


/* ___ woman_qisinbo ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_oneesan_1 stand
    %PT Ev_restaurant 60,0
    %AIM R
    talk = ___city/entrance_mob_qisinbo
}


/* ___ woman_elf_young_4 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_young_4 stand
    %PT Ev_restaurant -60,0
    %AIM LR
    %MOVE WALKAROUND_LR
}

/* ___ army_0 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_army_3 stand
    %PT Ev_armylr -20,0
    %AIM R
}
/* ___ army_1 ___ */
{
    %SIZE 12 78
        %MOBG	man_elf_army_0 stand
    %PT Ev_armylr 20,0
    %AIM L
}

IF 'PVV==105||PVV==106' {
    %DEFINE_ON_POINT Ev..Ev_armylr
    /* ___ armylr ___ */
    {
            talk = ___city/entrance_mob_00
    }
    %DEFINE_ON_POINT   
}


IF 'PVV==105' {
    /* ___ army_5 ___ */
    {

    %SIZE 12 78
    %PT Ev_inn 220 0
    %AIM R
        %MOBG	woman_elf_thin_army_2 stand
        talk = ___city/entrance_mob_05
    }
    IF 'GFC[WLR_G]==0' {
        
        /* ___ army_4 ___ */
        {

            %SIZE 12 78
            %PT Ev_inn -110 0
            %AIM R
        %MOBG	man_elf_army_2 stand
        %MOVE WALKAROUND_LR

            talk = ___city/entrance_mob_04
        }
    }
}




/* ___ man_bst_engineer_6 ___ */
{
    %SIZE 12 78
    %MOBG	man_bst_engineer_6 stand
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
/* ___ woman_elf_army_4 ___ */
{
    %SIZE 12 78
    %POS_RANDW 
    %MOBG	woman_elf_army_4 stand
    %MOVE WALKAROUND_MAP
}