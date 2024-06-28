LP_ACTIVATE ExitWL_forest2home
#MS '## #;'
#MS_ % '>>[ExitWL_forest2home.Cb -15,0 ]'
PIC_FILL	&3 DARK
PIC_FADEOUT	&3 50
WAIT 40

#MS_ % 'P[run] >+[80,0 <<0.18] P[run_stop] >+[40,0 :15] >+[15,0 :14] w20 P[stand]'

WAIT_MOVE

WAIT 4


TALKER n L
PIC   n a_3/a2__F1__f3__m1__b1_uo    

MSG	n_00
PIC_HIDE_ALL	 

WAIT 20

DENY_EVENTHANDLE

QU_SINV 15 80 1
QU_VIB 10 4 1
SND ground_gogogo
WAIT 5
HKDS	n CT #<%>
#MS_ % 'P[event_sink]'

TL 150 MSG_SKIP
TL 60 QU_SINV 20 140 1
// 揺れる
MSG	n_01
MSG_HIDE
ALLOW_EVENTHANDLE
WAIT 10

// map reload
PIC_FILL	&3 DARK
PIC_FADEIN	&3 70
PVV 102
INIT_MAP_MATERIAL forest_ahletic_home_thorn 1
STOP_BGM	240 

WAIT 80
SCN_MANUAL_BGM_REPLACE ''
WAIT_FN MAP_TRANSFER 
NEL_MAP_TRANSFER forest_ahletic_home_thorn R !!
WAIT 5
#< Ev_pvv102 >
#MS '## #;'

#MS_ % '>>[Ev_pvv102.b] P[event_sink~ =10] '
LOAD_BGM	BGM_forest  Normal

PIC_FADEOUT	&3 100

WAIT 90

#MS '>+[400,0 :250] w60'
WAIT 80

// こける,橋が崩れる
MSG	n_02

WAIT_MOVE

GFC_SET EIH1 0
GFC_SET IXA1 0
REPLACE_BGM	0 120 0
