GREETING @ 20
#MS '@#[%]'
HKDS	x CRB #<megane>
TALKER_REPLACE	x   elf_student talk_mob_w3
//GOTO _DEBUG

//崩れた中央道にいるモブ1 (女学生・夜のみ登場)
WAIT 20
IF 'GFC[MOB2]==0' {
    MSG	x_00
    GFC_SET MOB2 1
} ELSE {
    MSG	x_01
    GFC_SET MOB2 0
}