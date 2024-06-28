// 大穴の底で作業している獣人が。
// 明らかにヴァーロスそっくりなのだが、複数人いる上にマスクをしている。
// ただ、魔力が濃すぎてノエルは口を開けない。

TALKER	n L   
TALKER	w R   
PE ZOOM2 60
    #MS_ $1 '##'
IF 'GFC[WLR1]==0' {

    TALKER_REPLACE	w beastman
    PIC   n a_2/a0L1R3__F2__f2__m1__b5_u2    
    PIC   w w/a0L2R2__F2__f2__umask__e1    
    MSG	w_02 
    MSG_HIDE	
    WAIT 30
        MSG	n_20  T
    GFC_SET WLR_H |=8

} ELSIF '(GFC[WLR_H]&2)==0' {
    
    PIC   n a_3/a2__F1__f3__m1__b2_uo    
    PIC   w w/a0L1R2__F1__f1__umask_e1    
    IF '(GFC[WLR_H]&8)!=0' {
        MSG	n_03_2  T


    } ELSIF '(GFC[WLR_G])<=2' {
        MSG	n_00  T

    } ELSE {
        // 酒場で既に話している場合
        MSG	n_01  T
    }

    MSG_HIDE	
    WAIT 20  

    PIC   w w/a0L2R2__F2__f2__umask__e1    
    MSG	w_02 

PIC_HIDE_ALL	 

    MSG_HIDE	
    WAIT 40

    PE ZOOM2 -1
    #MS_ $2 '##'
    #MS_ $3 'w80 ##'
    #MS_ $4 'w160 ##'

HKDS	n B #<%>

    #MS_ % 'w240'
    MSG	n_03 T

    HKDS	n 
    WAIT_MOVE
    WAIT 10
    PIC   n a_2/a0L1R3__F2__f2__m1__b5_u2    
    PIC   w w/a0L2R2__F2__f2__umask__e4    
    #MS_ $1 '##'

    MSG	w_04 

    PIC   n a_1/a00L1R1__F1__f1__m1__b2__u0    
    MSG	n_05  T

    GFC_SET WLR_H |=2
} ELSE {
// ========================================================
    PIC   n a_2/a0L1R3__F2__f2__m1__b5_u2    
    PIC   w w/a0L2R2__F2__f2__umask__e1    
    MSG	n_10 T

    SELECT 2
    &&Select_speak_to _SPEAK_TO
    &&Cancel _END
    LABEL _SPEAK_TO
    // 話しかける
    MSG_HIDE
    WAIT 40

    TL 50 MSG_SKIP
    PIC   n a_2/a0L2R3__F2__f2__m1__b5_uo    
    MSG	n_11 

    CLEARTL
    DENY_EVENTHANDLE
    TL 30  ALLOW_EVENTHANDLE
    PIC_HIDE w
    PIC   n a_3/a2__F1__f3__m2__b3_u0    I
    PIC_MP	n BLS|SWB
    
    PIC_MOVEA	n 15 SCARY
    @_TSUKKOMI
    
    MSG	n_12 IA
    DOTL

    PIC   n a_2/a0L1R3__F2__f2__m2__b1_u2    
    PIC_MP	n BLS|SWT
    MSG	n_13 T

}
LABEL _END