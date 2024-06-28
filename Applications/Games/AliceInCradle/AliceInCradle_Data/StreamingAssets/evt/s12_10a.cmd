#< walross >
#MS '@R'

GREETING	R 40

IF 'GFC[WLR1]==1' {
    CHANGE_EVENT	s12_11a
}



TALKER w LL
TALKER s CLL 
TALKER n R
TALKER_REPLACE	s beastman
TALKER_REPLACE	w beastman

LOAD_BGM	BGM_madhatter 
STOP_BGM	140 0

// 9-A 
PIC   w w/a0L2R1__F2__f2__m1__e1__u3    
PIC   s s/a0L1R3__F1__f1__m1__e1__u1    
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u1    
MSG	w_00

REPLACE_BGM	50 0 0

PIC   s s/a0L1R2__F2__f2__m1__e1__u4    

MSG	s_01

PIC   n a_1/a22__F1__f1__m1__b1__u3    
MSG	n_02

PIC   w w/a0L1R3__F1__f1__m1__e2__u2    
PIC_MP	w LAG 

MSG	w_03

PIC   s s/a0L3R1__F1__f1__m1__e2__u1    
MSG	s_04

PIC   w w/a0L2R3__F2__f2__m1__e2__u3    
MSG	w_05
TALKER_REPLACE	s   
TALKER_REPLACE	w   
PIC   w w/a0L1R2__F1__f1__m1__e3__u2    
MSG	w_05b

PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
MSG	n_06



IF 'GFB[WALROSS_CURRY]==0' {
    PIC_HIDE s
    MSG_HIDE	  
    
    PIC   w w/a0L1R1__F2__f2__m1__e1__u1    
    TL 20 GETITEM mtr_curry 1 3
    TL 20 SND get_item
    TL 20 TALKER w CLL

    MSG	w_07
    DOTL
    // スパイスの小瓶
    PIC   n a_3/a0__F1__f3__m7__b0_u1    
    MSG	n_08


    TALKER w L
    PIC   w w/a0L1R1__F3__f3__m1__e1__u2    
    MSG	w_09

    PIC   w w/a0L1R2__F2__f2__m1__e1__u2    
    PIC_MP	w PLE 
    MSG	w_10

}

QUEST_FINISH p103_walross 


// REPLACE_BGM	90 100 0
GFB_SET WALROSS_CURRY 1

GFC_SET WLR1 1