GREETING	@ 15
#MS_ $1 '@#[%::40]'

HKDS	mb RB '#<'$1'>' 
HKDS	n LB  '#<%>' 

TALKER_REPLACE	mb Mob talk_mob_w1

IF 'quest_progress[subquest_treasurehunt_000]==-1' {
    WAIT 20
    MSG	mb_00 

PIC_SWIN treasurehunt/treasurehunt_000__0
WAIT 25

MSG	n_01 


MSG	mb_02 


MSG	n_03 


MSG	mb_04 

QUEST_PROGRESS subquest_treasurehunt_000 0  

} ELSE {
    // 2度目話す
PIC_SWIN treasurehunt/treasurehunt_000__0
WAIT 25
    MSG	mb_10_1 

}