%TALK_TARGET_TTT 1

%DEFINE_ON_POINT Ev..Ev_table_ttr  
/* ___ table_ttr ___ */
{
    IF 'GFB[TTR_PLAYED_BAR]' {
        %CHECK_DESC  EvTitle_4ascend_play
    } ELSE {
        %CHECK_DESC  EvTitle_4ascend
    }
    check = ___city/bar_4ascend_table

}

%DEFINE_ON_POINT   


_army105_defined=0
IF 'PVV==105||PVV==106' {
    /* ___ army105_0 ___ */
    {

        %SIZE 12 78
        %PT Ev_table_1 -28 0
        %AIM R
        %MOBG	woman_elf_thin_army_0 stand

    }
    _army105_defined=1
    /* ___ army105_1 ___ */
    {

        %SIZE 12 78
        %PT Ev_table_1 28 0 1
        %AIM L
        %MOBG	woman_elf_army_2 stand
    }
    %DEFINE_ON_POINT Ev..Ev_table_1
    
    /* ___ talk_105 ___ */
    {
        talk = ___city/bar_t00
    }
     %DEFINE_ON_POINT
}



IF '105<=PVV&&PVV<=107' {
    IF 'GFC[WLR_G]<=1' {
        IF '!'$_army105_defined {
            /* ___ army105_1 ___ */
            {

                %SIZE 12 78 
                %PT Ev_table_0 38 0 1
                %AIM L
                %MOBG	woman_elf_army_2 stand
            }
        }
        /* ___ army_4 ___ */
        %SIZE 12 78
        %PT Ev_table_0 62 0
        %AIM L
        %MOBG	man_elf_army_2 stand
        load = ___city/bar_w_t_first_battle
    }
    /* ___ walross ___ */
    {
        %SIZE 12 98
        %PXL sub_w
        %SP_SHIFT 0 3.5
        %PT Ev_table_0 28 0
        %AIM L
        talk = ___city/bar_w_portal        
    }
    /* ___ ostrea ___ */
    {
        %SIZE 12 68
        %PXL sub_s
        %SP_SHIFT 0 3.5
        %AIM R
        %PT Ev_table_0 -28 0
        talk = ___city/bar_s_portal        
    }

}



// ========================================================
// MARK : bartender
// ========================================================
%DEFINE_ON_POINT 
/* ___ ev_barten ___ */  
{
    %SIZE 12 28
    %PT Ev_counter 2 -2
    %AIM L
    %TALK_TARGET_TTT 0
    talk = ___city_bar/_barten_portal        
    PRE_LOAD = {
        #CALL ev_barten load_once
    }
    load_once = {
        ENGINE_NNEA Barten INIT sub_barten_npc 
    }
    JUICE_EXPL = {
        CHANGE_EVENT ___city_bar/_barten_juice_explode   
    }
}



%DEFINE_ON_POINT wallpaper_door..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 80
    }
}  

%DEFINE_ON_POINT 
