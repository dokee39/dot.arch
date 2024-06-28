
GREETING	L 20 

#MS '@L'

HKDS	x CCRB #<army_a>   
TALKER_REPLACE	x Army   talk_mob_m2

IF 'GFC[MOB0]==0' {
    GFC_SET	MOB0 1 
    MSG	x_00
    
} ELSE {
    MSG	x_01
}



#MS '@R'