MSG_HIDE

PIC_HIDE_ALL	 

#MS_ % '_ +G  >>[shelf.b -22,0 :150]  P[stand_ev] @RB'

WAIT 20

TALKER n L

PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG n_00 

PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC_MP	n SWT 

MSG n_01

    PIC_HIDE_ALL	 
IF 'ItemHas[mapmarker_red]==0' {

    WAIT 20
    GETITEM_BOX      mapmarker_red    1 0
    GETITEM_BOX  mapmarker_yellow    1 0
    GETITEM_BOX  mapmarker_green    1 0
    GETITEM_BOX  mapmarker_blue    1 0
    WAIT_FN ITEMDESC
}
