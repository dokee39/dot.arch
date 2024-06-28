%TALK_TARGET_TTT 1
%DEFINE_ON_POINT Ev..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom2
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 1 1 '' Ev_restroom
    }
}  

%DEFINE_ON_POINT Ev..Ev_stop
/* ___ stopper ___ */  
{
    stand = {
        CHANGE_EVENT ___city/entrance_stopper L Ev_stop
    }
}

%DEFINE_ON_POINT   

IF 'PVV==105' {
        
    /* ___ army_0 ___ */
    {
        %SIZE 12 78
        %PT Ev_stop.b 90,0
        %MOBG	woman_elf_thin_army_1 stand
        %AIM R
        %SP_SHIFT 0 4
        talk =  ___city/entrance_mob_01 army_0 MOB1
    }

}





/* ___ army_3 ___ */
{
    %SIZE 12 78
    %PT Ev_stop.b 190,0
    %MOBG	man_elf_army_3 stand
    %AIM R
    %MOVE WALKAROUND_LR '' 0.3
    talk =  ___city/entrance_mob_06 army_3  MOB4
}


IF '105<=PVV&&PVV<=107' {
    /* ___ engineer_1 ___ */
    {
        %SIZE 12 78
        %PT Ev_mech 80,0
        %MOBG	man_bst_engineer_1 stand
        %MOVE	WALKAROUND_LR
        %AIM L
        %SP_SHIFT 0 4
    }

    /* ___ engineer_0 ___ */
    {
        %SIZE 12 78
        %PT Ev_mech -40,0
        %MOBG	man_bst_engineer_0 stand
        %AIM R
        %SP_SHIFT 0 4
        talk =  ___city/entrance_mob_03 engineer_0 MOB3
    }
}