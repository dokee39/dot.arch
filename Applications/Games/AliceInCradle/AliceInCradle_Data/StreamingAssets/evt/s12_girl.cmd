GREETING @ 20
#MS 'P[stand] @#[%]'
HKDS	x CT #<girl>
TALKER_REPLACE	x   elf_student talk_mob_w0
//GOTO _DEBUG

//崩れた中央道にいるモブ4 (女学生・夜のみ登場)
WAIT 20
IF 'GFC[MOB3]==0' {
    MSG	x_00
    GFC_SET MOB3 1
} ELSE {
    MSG	x_01
    GFC_SET MOB3 0
}