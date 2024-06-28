
GREETING	R 1
#MS_ man2 '@R'
#< man2 >
HKDS	st CCRT '#<man2>'  
TALKER_REPLACE	st dojo_student talk_mob_w1


IF 'GFC[MOB1]==0' {
    GFC_SET MOB1 1
    MSG	st_00
} ELSE {
    GFC_SET MOB1 0
    MSG	st_01
}



