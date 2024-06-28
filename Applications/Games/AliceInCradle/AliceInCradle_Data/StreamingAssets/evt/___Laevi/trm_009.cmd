

#SND_LOAD ev_trm
// イベント終了
TALKER	v R  

TALKER	n L  

PIC   v v/a4L1RR__F1__m1__b2_ua    
PIC_MP	v PLE  
PIC   n a_3_bass/a1L2R3__F1__f3__m1__b3_u0    
PIC_MP	n SWT2|BLS  


MSG	v_35


PIC   n a_3_bass/a1L3R3__F1__f3__m2__b1_u1    
PIC_MP	n SWT|BLS  

MSG	n_36

IF $_result'==1' {
// 分岐a : Aルート完遂（正しいアロマを作った）

    PIC   v v/a5L1RR__F1__m5    
    MSG	v_37

    PIC   n a_1_bass/a2__F1__f1__m1__b3__u3    
    PIC_MP	n BLS  
    MSG	n_38

    PIC   v v/a3__F2__m1__b2_u0    
    MSG	v_39

    PIC   n a_2_bass/a1L4R3__F2__f2__m1__b1_u2    
    PIC_MP	n BLS  
    MSG	n_40

    PIC   v v/a5L1RR__F1__m1__b2_ua    
    MSG	v_41

    PIC   v v/a3__F2__m1__b2_u0    
    MSG	v_42

    @_TSUKKOMI
    PIC   n a_3_bass/a2__F1__f3__m5__b1_u0     I
    PIC_MP	n BLS|SWT2 I 
    MSG	n_42



} ELSE {
    

    // 分岐b : アロマ制作を間違えた
    PIC   v v/a5L1RR__F2__m1__b2_u1    
    MSG	v_43

    PIC   n a_3_bass/a1L1R3__F1__f3__m4__b1_u0    
    PIC_MP	n TTT|BLS
    
    MSG	n_44

    PIC_MP	n BLS|DEP
    PIC   n a_1_bass/a1L1R1__F1__f1__m1__b3__u1    
    MSG	n_44_2

    PIC   v v/a3__F1__m1__b3_u0    
    MSG	v_45

    PIC   v v/a4L1RR__F1__m1__b2_ua    
    MSG	v_46

    PIC   v v/a5L1RR__F2__m1__b1_u0    
    MSG	v_47

    IF 'masturbate_count>0' {
        // 分岐b-2 自慰回数1以上
        PIC   n a_2_bass/a1L2R3__F2__f2__m1__b2_uo    
        PIC_MP n BLS|SWT
        MSG	n_48

        PIC   v v/a3__F1__m5    
        MSG	v_49


    } ELSE {
        

        PIC   n a_3_bass/a1L2R2__F1__f3__m1__b3_u3    
        PIC_MP n BLS

        // 分岐b-3  自慰回数0
        MSG	n_51

        PIC   v v/a5L1RR__F1__m4__b1_ua    
        MSG	v_52

        PIC_HIDE_ALL	 
        #MS_ trm_camera	'>>[Ev_left 60,-100] w10 snd[door_knock] w2 ## '
        
        WAIT 30
        //チルダのノック
        HKDS	d CCLT @LOUT 
        
        MSG	d_53

        DOTL
        HKDS	v RT #<laevi>
        MSG	v_54

    }
}



MSG_HIDE
PIC_HIDE_ALL	 

#MS_ laevi 'snd[foot_bare_ev]'
PIC_FILL	&10  DARK
PIC_FADEIN	&10 50

WAIT 50

#VANISH laevi
#MS_ % '##'
PIC_FADEOUT	&10 70

WAIT 60

IF $_result'==0' {
    IF 'masturbate_count>0' {
        // 分岐b-2 自慰回数1以上
        PIC   n a_3_bass/a2__F1__f3__m2__b1_u1    
        PIC_MP n BLS

        MSG	n_50
    } ELSE {
        PIC   n a_3_bass/a2__F1__f3__m2__b2_u1    
        PIC_MP n BLS|DEP
        MSG	n_55
    }
}

GFC_SET_MX	TRM0 2 
