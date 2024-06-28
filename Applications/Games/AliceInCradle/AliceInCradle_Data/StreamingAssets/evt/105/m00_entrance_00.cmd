START_LETTERBOX
ALLOW_SKIP

GFC_SET_MX IXA1 1
PR_KEY_SIMULATE	R 0 
WAIT_FN REELMNG


#< % >
#MS '>+[100,0 :70] w120 P[stand_ev]'

WAIT 120
TALKER	n L   

PIC   n a_3/a2__F1__f3__m1__b3_u2    
// イベント ノエル、グラティア到着
MSG	n_00


MSG	n_01

PIC   n a_1/a00L1R3__F1__f1__m1__b2__uo    
MSG	n_02



IF 'noel_bote[0]' {
    // 抱卵
    PIC   n a_3/a1__F1__f3__m2__b2_u1    
    PIC_MP	n BLS 
    PIC_MOVEA	n 15 SCARY
    
    
    MSG	n_05


    MSG	n_06

} ELSIF 'noel_torned||noel_cloth_dirty' {
    // 服が汚れている場合
    PIC_MOVEA	n 15 SCARY
    PIC   n a_1/a00L3R1__F1__f1__m1__b3__u0    
    PIC_MP	n BLS|SWT
    MSG	n_04
} ELSE {
    PIC   n a_3/a0__F1__f3__m1__b4_uo    
    MSG	n_03
}
PIC_HIDE_ALL	 


QUEST_PROGRESS p105_grazia 0
QUEST_FINISH p102_go_grazia H
AUTO_SAVE

