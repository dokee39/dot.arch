
/* ___ staff1 ___ */
{
    %SIZE 12 78
    %MOBG	woman_bst_frog_1
    %PT Ev_staff1.b 0,-8
    %MOBG_CLIP Clip_counter
    %AIM L
    talk = ___city_guild/front_v025 staff1
}


_board_evt=
IF '105<=PVV&&PVV<=106' {
    _board_evt=___city/guild_board_105
}
IFSTR $_board_evt ISNOT '' {
    /* ___ board_event ___ */
    {
        %PT Ev_board
        %CHECK_DESC     EV_access_read
        check = $_board_evt
    }

}