//1 : 初めてのデスなら 1
// LOAD_BGM	BGM_suzumusi
// REPLACE_BGM	0 140 0


PE ZOOM2 40
WAIT 80
DENY_SKIP




#< % >

TUTO_MSG Tuto_wakeup
TUTO_POS C T
DENY_EVENTHANDLE_KEY CANCEL
WAIT_BUTTON
ALLOW_EVENTHANDLE_KEY CANCEL

PR_KEY_SIMULATE SUBMIT
WAIT 10
TUTO_REMOVE

PR_KEY_SIMULATE SUBMIT 0
WAIT 20
START_LETTERBOX
WAIT 40
#MS_SOFT_ % 'P[stand_weak~]'


TALKER n R
ALLOW_SKIP

IF $1 {

    PIC   n a_3/a1__F1__f3__m2__b3_u0    

    MSG	n_00


    PIC   n a_3/a0__F1__f3__m2__b1_u1    
    IFSTR $_premap IS forest_01 {
        MSG	n_01
    } ELSE {
        MSG	n_01b
    }

    PIC   n a_2/a0L1R3__F2__f2__m1__b2_uo
    MSG	n_02

    PIC   n a_2/a0L1R3__F2__f2__m1__b2_u3
    MSG	n_03

    PIC   n a_2/a0L3R1__F2__f2__m2__b2_u0
    PIC_MP n BLS
    MSG	n_04

    PIC   n a_3/a2__F1__f3__m2__b2_u0    
    PIC_MP n BLS
    MSG	n_05

} ELSE {
    PIC   n a_3/a2__F1__f3__m2__b2_u0    
    PIC_MP n BLS
    MSG	n_06

}
<LOAD>
GFC_SET_MX	NOE1 15 
CHANGE_EVENT2	s00_5d 

LOAD_BGM BGM_forest Normal
REPLACE_BGM	150 180 
