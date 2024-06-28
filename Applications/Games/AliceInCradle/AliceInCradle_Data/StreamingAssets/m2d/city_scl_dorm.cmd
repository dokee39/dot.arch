


%DEFINE_ON_POINT house..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 50
    }
}  

%DEFINE_ON_POINT Lay..LP_NAME  


/* ___ woman_elf_student_6 ___ */
{
    %SIZE 12 78
    %PT Ev_doorside0 -30 0
    %AIM LR
    %MOBG	woman_elf_student_6 stand
    %MOVE WALKAROUND_LR
}
