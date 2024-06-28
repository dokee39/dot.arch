// ブランコ
START_LETTERBOX

#< % >
#MS 'P[walk_weak] >>[Ev_bench.b 9,0 :140] P[bench_shamed] @BL w5 snd[cloth_off]'


WAIT 20
STOP_BGM	300 0

WAIT 40
DENY_EVENTHANDLE 

HKDS	n CB #<%> TT

TL 130 ALLOW_EVENTHANDLE
TL 130 PE ZOOM2 120
MSG	n_00

DOTL
WAIT_MOVE

// ブランコに乗って揺らす
TALKER n R
HKDS n 

PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	n_01

PIC   n a_3/a0__F1__f3__m1__b3_u0    
MSG	n_02

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
MSG	n_03

PIC   n a_1/a00L1R3__F1__f1__m1__b3__u3    
MSG	n_04



@___Other/trauma -1 bench_trauma
LOAD_BGM BGM_primula
PE HP_REDUCE 20
WAIT 60


HKDS	n CB #<%> TT
MSG	n_05

WAIT 60

GFC_SET_MX	PRM3 1


#CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD
WAIT 1
#VANISH