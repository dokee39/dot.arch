##USE_EVENT_VARCON##
IFDEF museum_t04_after
    museum_t04_after!
ELSE {
    museum_loadonce!
}

/* ___ owl ___ */
{
    %SIZE 12 78
    %MOBG	man_bst_owl_1 stand 
    %AIM L
    _cur_museum_t04=0
    IFDEF museum_t04
        _cur_museum_t04=1
    IF '(GFC[MUS0])==0' {
        %LIGHT 0
        %PT	Ev_sphere 290 0
    } ELSE {
        %LIGHT ff:#756C6C 55
        IF '(GFC[MUS0])==1' {
            %PT	Ev_sphere 60 0
            %AIM R
        } ELSIF '(GFC[MUS0])<4||'$_cur_museum_t04 {
            %PT	Ev_sphere 60 0
            %AIM L
        } ELSE {
            %PT	Ev_counter -10 12 1
            %AIM R
            %MOBG_CLIP Clip_counter_upper
        }
    
    }
    PRE_LOAD = {
        #CALL owl load_once
    }
    LOAD_ONCE = {
        TITLECALL_HIDE 1
        IFDEF museum_loadonce 
            SEEK_END
        IFDEF museum_t03 {
            museum_t03!
            IF 'GFC[MUS0]==2' {
                CHANGE_EVENT	___city_museum/t03
            }
        }
        IFDEF museum_t04 {
            museum_t04!
            IF 'GFC[MUS0]==4' {
                CHANGE_EVENT	___city_museum/t04
            }
        }
        museum_loadonce=1
        LOAD_BGM BGM_houkago_no_hitotoki
        IF '(GFC[MUS0])==0' {
            STOP_BGM	120  0
            DARK_ACTIVATE
            #SND_LOAD ev_city
        } ELSE {
            REPLACE_BGM	100 120 0
        }
    }
    PRE_UNLOAD = {
        museum_loadonce!
    }
    TALK = ___city_museum/_portal
}

%DEFINE_ON_POINT Ev..Ev_sphere
/* ___ lp_focus ___ */
{
    trigger_a = ___city_museum/_portal_sphere
}
/* ___ sphere ___ */
{

    check = ___city_museum/_portal_sphere
    IF '(GFC[MUS0])>=1' {
        %LIGHT ff:#504444 55
    }
}

%DEFINE_ON_POINT 

IF '(GFC[MUS0])==0' {
    %DEFINE_ON_POINT Ev..Ev_near_counter  
    
    /* ___ owl_first ___ */
    {
        stand = {
            #CALL owl TALK
        }
    }
    %DEFINE_ON_POINT 
    
}