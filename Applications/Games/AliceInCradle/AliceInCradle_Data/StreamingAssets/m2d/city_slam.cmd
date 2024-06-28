##USE_EVENT_VARCON##

IF 'PVV==105||PVV==106' {
    /* ___ baba_slam_0 ___ */
    {
        %SIZE 12 68
        %PXL sub_mob
        %PT Ev_slam_0
        %POSE bba_stand
        %SP_SHIFT 0 0
        %AIM L
        talk = ___city/m00_slam_grandma
        
    }
    _already=~SfEvt[___city/m00_slam_grandma]
    IF '!'$_already {
        %DEFINE_ON_POINT        Ev..Ev_slam_0_area
        /* ___ Ev_slam_0_area ___ */
        {
            stand = {
                #CALL baba_slam_0 talk
            }
        }

        %DEFINE_ON_POINT 
        /* ___ man_elf_normal_1 ___ */
        {
            %SIZE 12 78
            %MOBG	man_elf_normal_1 stand
            %PT Ev_slam_1
            %AIM R
        }
    }
}
IFDEF _gameover_now_city_slam {
    /* ___ man_bst_engineer_5 ___ */
    {
        %SIZE 12 78
        %MOBG	man_bst_engineer_5 stand
        %AIM L
        %PT Ev_slam_ground_r 40,0
    }

} ELSIF '!GFB[PVV105_CITY_SLAM_BST]' {
    /* ___ man_bst_arigator_2 ___ */
    {
        %SIZE 12 78
        %MOBG	man_bst_arigator_2 stand
        %PT Ev_slam_ground_r 30,0
        %AIM L
    }
    /* ___ man_bst_engineer_5 ___ */
    {
        %SIZE 12 78
        %MOBG	man_bst_engineer_5 stand
        %AIM R
        %PT Ev_slam_ground_r -30,0
    }
    /* ___ 105_city_slam_bst ___ */
    %DEFINE_ON_POINT Ev..Ev_slam_ground_r
    {
        %TALK_TARGET_TTT 1
        talk = ___city/slam_engineer_mob_00 man_bst_engineer_5 man_bst_arigator_2 
    }
    %DEFINE_ON_POINT  

}

%DEFINE_ON_POINT house_1..Ev_door_baru  
/* ___ Ev_baru_load ___ */
{
    load = {
        IF 'GFC[BRTU]==1' GFC_SET BRTU 0
    }
}
%DEFINE_ON_POINT  

/* ___ woman_elf_thin_1 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_thin_1 stand

    %PT Ev..Ev_LBB  -60 2
    %TALK_TARGET_TTT 1
    %AIM R
    talk = ___city/slam_egg_seller  woman_elf_thin_1
}
/* ___ ltl_elf_girl_2 ___ */
{
    %SIZE 12 50
    %MOBG	ltl_elf_girl_2 stand
    %PT Ev..Ev_LBB  20 10 
        %TALK_TARGET_TTT 1
    %AIM L
    talk = ___city/slam_egg_seller_sister ltl_elf_girl_2 MOB4
    %MOVE WALKAROUND_LR '' 0.3
}

/* ___ man_bst_engineer_6 ___ */
{
    %SIZE 12 78
    %MOBG	man_bst_engineer_6 stand
    %POS_RANDW Area_Upper
    %MOVE WALKAROUND_MAP
}

/* ___ man_elf_ossan_slam ___ */
{
    %SIZE 12 78
    %MOBG	man_elf_ossan_slam stand
    %POS_RANDW Area_Upper
    %MOVE WALKAROUND_MAP
}

/* ___ woman_elf_oneesan_3 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_oneesan_3 stand
    %PT Area_Upper2 -140 0
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.4
}

/* ___ ltl_elf_girl_5 ___ */
{
    %SIZE 12 78
    %MOBG	ltl_elf_girl_5 stand
    %PT Area_Upper2 -480 8
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.66
}

/* ___ ltl_elf_boy_4 ___ */
{
    %SIZE 12 78
    %MOBG	ltl_elf_boy_4 stand
    %PT Area_Upper2 -410 8
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.78
}