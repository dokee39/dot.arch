%TALK_TARGET_TTT 1


%DEFINE_ON_POINT house_2..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 100
    }
}  
%DEFINE_ON_POINT 



/* ___ Ev_park_LB_girl ___ */
{
    %SIZE 12 78
    %PT Ev_park_LB 0 8
    %AIM LR
    %MOVE WALKAROUND_LR '' 0.77
    %MOBG	ltl_elf_girl_3 stand
    talk = ___city/park_mob_00 Ev_park_LB_girl MOB0
}  
