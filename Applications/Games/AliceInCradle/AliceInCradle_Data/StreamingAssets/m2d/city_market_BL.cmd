%TALK_TARGET_TTT 1

%DEFINE_ON_POINT Ev..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 50
    }
}  
%DEFINE_ON_POINT Ev..Ev_cafe  
{
    /* ___ cafe_BL ___ */
    %CHECK_DESC EV_access_city_cafe
    check = {
        CHANGE_EVENT ___city/_cafe_BL_portal
    }

}


%DEFINE_ON_POINT 
/* ___ engineer_0 ___ */
{
    %SIZE 12 78
    %PT Ev_mech_1 0 0
    %AIM L
    %MOBG	man_bst_engineer_4 stand
    talk = ___city/bl_engineer_mob_00
}
/* ___ engineer_1 ___ */
{
    %SIZE 12 78
    %PT Ev_mech_0 0 0
    %AIM R
    %MOBG	man_bst_engineer_3 stand
    
}

/* ___ Ev_step_cafe ___ */
{
    %SIZE 12 78
    %PT Ev_step_cafe 0 8
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.77
    %MOBG	ltl_elf_boy_2 stand
    talk = ___city/market_BL_mob01 Ev_step_cafe
}



%DEFINE_ON_POINT

/* ___ woman_elf_student_9 ___ */
{
    %SIZE 12 78
    %POS_RANDW PosW_R
    %MOBG	woman_elf_student_9 stand
    %MOVE WALKAROUND_MAP

}


/* ___ woman_elf_thin_sudent_11 ___ */
{
    %SIZE 12 78
    %PT Ev_TT -60,15
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.77
    %MOBG	woman_elf_thin_sudent_11 stand
    talk = ___city/market_left_army_mob_00 woman_elf_thin_sudent_11
}
/* ___ woman_elf_army_4 ___ */
{
    %SIZE 12 78
    %POS_RANDW PosW_R
    %MOBG	woman_elf_army_4 stand
    %MOVE WALKAROUND_MAP
}

/* ___ woman_elf_thin_sudent_5 ___ */
{
    %SIZE 12 78
    %POS_RANDW PosW_R
    %MOBG	woman_elf_thin_sudent_5 stand
    %MOVE WALKAROUND_MAP
}
IF 'PVV>=106' {
    /* ___ man_elf_young_reporter ___ */
    {
        %SIZE 12 78
        %POS_RANDW PosW_R
        %MOBG	man_elf_young_reporter stand
        %MOVE WALKAROUND_MAP
    }
    
}

/* ___ woman_bst_rabbit_0 ___ */
{
    %SIZE 12 78
    %PT Ev_step_RB 40,0
    %AIM L
    %MOBG	woman_bst_rabbit_0 stand
}

/* ___ ltl_elf_girl_4 ___ */
{
    %SIZE 12 78
    %PT Ev_step_RB -30,10
    %AIM LR
    %MOBG	ltl_elf_girl_4 stand
        %MOVE WALKAROUND_LR
}

/* ___ man_elf_fat_5 ___ */
{
    %SIZE 12 78
    %POS_RANDW PosW_R
    %MOBG	man_elf_fat_5 stand
    %MOVE WALKAROUND_MAP
}

