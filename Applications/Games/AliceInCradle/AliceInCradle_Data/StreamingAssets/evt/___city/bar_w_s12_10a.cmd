
#< walross > 
TALKER w CLL
TALKER s LL 
TALKER n R
TALKER_REPLACE	s beastman
TALKER_REPLACE	w beastman


PIC   w w/a0L1R3__F2__f2__m1__e1__u2    
PIC   s s/a0L1R3__F1__f1__m1__e1__u1    
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u1    
// s12_10a (ev_s12_v22) の内容に近い内容。
MSG	w_00 


PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_01 


PIC   s s/a0L3R2__F2__f2__m1__e1__u3    
MSG	s_02 


PIC   n a_1/a22__F1__f1__m4__b1_u0    
MSG	n_03 

PIC   w w/a0L3R1__F1__f1__m1__e2__u2    
PIC_MP	w LAG 

MSG	w_04 


PIC   w w/a0L2R3__F2__f2__m1__e1__u3    
MSG	w_05 

// *w_05b 普段は山でひたすら..
PIC   w w/a0L3R1__F2__f2__m1__e3__u1    
TALKER_REPLACE	s   
TALKER_REPLACE	w   
MSG	s12_10a*w_05b

PIC   w w/a0L1R1__F3__f3__m1__e1__u1    
MSG w_06
GFC_SET_MX WLR1 1
GFC_SET	 WLR_G  ~(GFC[WLR_G])|3|8

CHANGE_EVENT	___city/bar_w_t00 1
