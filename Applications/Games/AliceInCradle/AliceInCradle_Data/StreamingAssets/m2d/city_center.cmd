##USE_EVENT_VARCON## 
%TALK_TARGET_TTT 1


/* ___ woman_elf_pocha_3 ___ */
{
        %SIZE 12 78
    %PT Ev_store_1
    %MOBG	woman_elf_pocha_3 stand
    %CHECK_DESC Select_buying
    talk = ___city/center_mob_00
}

/* ___ store_vegi ___ */
{
        %SIZE 12 78
    %PT Ev_store_0
    %MOBG	man_elf_fat_4 stand
    %CHECK_DESC Select_buying
    %MOVE WALKAROUND_LR '' 0.35
    talk = ___city/center_vegi

}

/* ___ man_bst_fat_5 ___ */
{

    %SIZE 12 78
    %PT Ev_stoneshop
    %MOBG	man_bst_fat_5 stand
    %CHECK_DESC Select_buying
    %MOBG_CLIP Area_stoneshop
    talk = ___city/center_stoneshop
}
    

IF 'GFB[PVV105_CITY_ELEC]==0' {
    /* ___ engineer_105_0 ___ */
    {
        %SIZE 12 78
        %PT Ev_mech_1 -10,0
        %MOBG	man_bst_arigator_1 stand
        %AIM R
        talk = {
            CHANGE_EVENT ___city/center_engineer_mob_00 0
        }
        trigger_a = {
            CHANGE_EVENT ___city/center_engineer_mob_00 1
        }
        IFDEF center_engineer_mob_00_playing {
%TALK_TARGET_TTT 0
        }
    }
    /* ___ engineer_105_1 ___ */
    {
        %SIZE 12 78
        %PT Ev_mech_0 -10,0
        IFDEF center_engineer_mob_00_playing {
            %MOBG	man_bst_engineer_2 stand
            load = {
                #CALL engineer_105_0 trigger_a
            }
        }
        %PHY
        %AIM R
        trigger_a = {
            DENY_SKIP
        }
    }
}

%DEFINE_ON_POINT house_2..Ev_restroom  
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 66
    }
}  
%DEFINE_ON_POINT 

%DEFINE_ON_POINT house_2..Ev_restroom_2  
{
    /* ___ restroom_2 ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom_2 66
    }
}  
%DEFINE_ON_POINT 



/* ___ man_elf_young_3 ___ */
{
    %SIZE 12 78
    %MOBG	man_elf_young_3 stand
    %PT Ev..Ev_heaven_lt 
    %MOVE WALKAROUND_LR '' 0.5
    talk = ___city/center_elf_mob_01 man_elf_young_3 MOB1
}



/* ___ man_elf_normal_2 ___ */
{
    %SIZE 12 78
    %MOBG	man_elf_normal_2 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}
/* ___ woman_elf_young2_2 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_young2_2 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}
/* ___ woman_elf_young_4 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_young_4 stand
    %POS_RANDW
    %MOVE WALKAROUND_MAP
}




    /* ___ girl ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_student_1 stand
        // %SP_SHIFT 0 0
        %POS_RANDW 
        %MOVE WALKAROUND_MAP
    }
    /* ___ woman_elf_young_2 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_young_2 stand
        %POS_RANDW
        %MOVE WALKAROUND_MAP
    }
    /* ___ woman_elf_young2_1 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_young2_1 stand
        %POS_RANDW
        %MOVE WALKAROUND_MAP
    }
    /* ___ man_elf_young_1 ___ */
    {
        %SIZE 12 78
        %MOBG	man_elf_young_1 stand
        %POS_RANDW
        %MOVE WALKAROUND_MAP
    }


    