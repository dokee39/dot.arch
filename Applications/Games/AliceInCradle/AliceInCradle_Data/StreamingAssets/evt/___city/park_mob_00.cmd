GREETING	@ 15
#MS_ $1 '@#[%::40]'

HKDS	mb RB '#<'$1'>' 
TALKER_REPLACE	mb Mob talk_mob_w5

IF 'GFC['$2']==0' {
    GFC_SET $2 1

// 妹に話す
MSG	mb_00 

} ELSE {
    MSG	mb_01 

    GFC_SET $2 0
}

