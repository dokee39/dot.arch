GREETING	L 11

#< man1 >
HKDS	st CCRT '#<man1>'  
TALKER_REPLACE	st dojo_student talk_mob_m2

IF 'GFC[MOB0]==0' {
    GFC_SET MOB0 1
    MSG	st_00
} ELSE {
    GFC_SET MOB0 0
    MSG	st_01
}



