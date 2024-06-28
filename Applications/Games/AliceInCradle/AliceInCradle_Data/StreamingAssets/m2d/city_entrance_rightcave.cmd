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
        CHANGE_EVENT ___city/entrance_stopper R Ev_stop
    }
}

%DEFINE_ON_POINT Ev..Ev_stop_t
/* ___ stopper_t ___ */  
{
    stand = {
        CHANGE_EVENT ___city/entrance_stopper R Ev_stop_t
    }
}
