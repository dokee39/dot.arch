GREETING @ 20
#MS '@#[%]'
HKDS	x CT #<oneesan>
TALKER_REPLACE	x   elf_madam talk_mob_w2
//GOTO _DEBUG

// 同所 他のモブ2 (青年)
WAIT 20
IF 'GFC[MOB1]!=1' {
    MSG	x_00
    GFC_SET MOB1 1
} ELSE {
    MSG	x_01
    GFC_SET MOB1 0
}