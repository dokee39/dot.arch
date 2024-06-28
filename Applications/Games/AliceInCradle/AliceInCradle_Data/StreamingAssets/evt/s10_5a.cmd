
// 門の衛兵
LOAD_BGM	BGM_herghost
#MS '##'


MSG	n_00


MSG	x_01


MSG	n_02


MSG	x_03

WAIT 5

QU_SINV 20 80 1
QU_VIB 10 4 1
SND ground_gogogo
WAIT 50

STOP_BGM	200 




// 地響きがなる
TALKER	n   L 
HKDS	n    
PIC   n a_3/a2__F1__f3__m1__b2_u0    
PIC_MP	n EXC
MSG	n_04

PIC_HIDE n
WAIT 20

REPLACE_BGM	20 0 0

MSG	x_05

WAIT 5

#VANISH pvv101_auto
#MS_ % 'P[stand~]'
PIC   n a_2/a0L1R1__F2__f2__m1__b1_uo    
MSG	n_06
PIC_HIDE n

LP_ACTIVATE ExitWR_forest2home
#MS_ % 'P[run] >+[340,0 <<0.18] P[stand]'
// N :　走って外へ
WAIT 30
#MS '@R'
WAIT 15
MSG	x_07


WAIT 25
PIC_FILL	&3 DARK

INIT_MAP_MATERIAL forest_ahletic_home_thorn 2
ADD_MAPFLUSH_FLAG
PIC_FADEIN	&3 40
WAIT 41
SCN_MANUAL_BGM_REPLACE 'BGM_herghost'
WAIT_FN MAP_TRANSFER 
NEL_MAP_TRANSFER house_road -2 ExitWR_forest2home
FLUSHED_MAP
SAVE_SAFEAREA_DEPERTURE house
QUEST_FINISH p100_talk_customer
QUEST_PROGRESS p101_find_ixia 0

WAIT 2
LP_ACTIVATE ExitWL_forest2home
#MS_ % '>+[-30,0]'
