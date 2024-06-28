// ポータル
GREETING L 20
#MS '@L'

WAIT 20
HKDS	n CCLB #<%>
HKDS	x RB #<eihi>
TALKER_REPLACE	x Guard talk_guard

IF 'PVV<100' {
    CHANGE_EVENT	___Mob_Eihi/s00_0a
} ELSIF 'PVV<=101' {
    CHANGE_EVENT	s10_5a
} ELSIF 'PVV>=102 && PVV<200' {
    CHANGE_EVENT	s10_5c
    
}