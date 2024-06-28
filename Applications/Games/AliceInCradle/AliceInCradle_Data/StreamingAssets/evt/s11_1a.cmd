// イクシャの救助要請
IF 'PVV!=102||GFC[IXA1]>1' SEEK_END
#< % >
START_LETTERBOX

WAIT 10
PR_KEY_SIMULATE	L 0 
PR_KEY_SIMULATE	R 0 
WAIT_MOVE
LOAD_BGM	BGM_herghost 



HKDS cane CRT #<%>  
TALKER_REPLACE	cane NoelCane talk_cane
TALKER	n L   

MTL MSG_SKIP

PIC   n a_3/a2__F1__f3__m1__b2_uo    
MSG	cane_00 D

PIC   n a_3/a2__F1__f3__m1__b4_uo    
PIC_MP	n EXC 

MSG	n_01


MSG	cane_02 D

PIC   n a_1/a00L1R1__F1__f1__m1__b2__u0    
PIC_MP	n SWT 

MSG	n_03


MSG	cane_04 D


PIC   n a_1/a22__F1__f1__m1__b1__u1    
MSG	n_05

STOP_BGM	200 

PIC   n a_2/a0L1R1__F2__f2__m1__b4_u2    
MSG	n_05_2
MSG	cane_06 D

REPLACE_BGM	60 0 0

PIC   n a_3/a2__F1__f3__m1__b2_u2    
PIC_MP	n EXQ
MSG	n_07
PIC   n a_1/a00L1R1__F1__f1__m1__b3__u0    
PIC_MP	n SMK


MSG	n_08
PIC   n a_3/a0__F1__f3__m1__b4_uo    

MSG	n_09
GFC_SET IXA1 2
QUEST_PROGRESS p101_find_ixia 1

SF_SET M2D_LP_BRK_Breakable_home_thorn_bigstone 1

NEED_FINE_DEPERTURE

PIC_HIDE_ALL	
STOP_LETTERBOX


TUTO_MSG	Tuto_map

ALLOW_EVENTHANDLE_KEY MAP
WAIT_FN	UIGM_ACTIVATE 
ALLOW_EVENTHANDLE_KEY
DOTL
TUTO_REMOVE


START_LETTERBOX
WAIT 20

STOP_BGM	150 


PIC   n a_2/a0L2R1__F2__f2__m1__b1_u2    
PIC_MP	n SWT 2
MSG	n_10


REPLACE_BGM	200 0 

//#<
//#VANISH
