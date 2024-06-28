

/* ___ man1 ___ */
{
    %SIZE 12 78
    %PT Ev_sihan 67
    %MOBG	man_elf_norma_dojo stand
    %AIM L
    %SP_SHIFT 0 4
    talk = ___dojo/mob1
}
/* ___ man2 ___ */
{
    %SIZE 12 78
    %PT Ev_sihan 97
    %MOBG	man_elf_young_dojo stand
    %AIM L
    %SP_SHIFT 0 4
    talk = ___dojo/mob2
}

/* ___ sihan ___ */
{
    %SIZE 12 78
    %PT Ev_sihan 2
    %MOBG	man_elf_dojo fold
    %AIM L
    %SP_SHIFT 0 4
    talk = ___dojo/_portal
}
%DEFINE_ON_POINT Ev..Ev_mipha  
/* ___ mipha ___ */
{
    PRE_UNLOAD = {
        GFC_SET DJO0 ~GFC[DJO0]&13
    }

}
IF 'GFC[DJO0]==0' {
    %DEFINE_ON_POINT Ev..Ev_sihan_first  
    /* ___ Ev_sihan_first ___ */
    {
        stand = {
            #VANISH
            #CALL sihan talk
        }
    }
}
%DEFINE_ON_POINT