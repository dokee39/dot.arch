GREETING  @ 30

HKDS	x CLB #<mobgirl>
HKDS	n CRB #<%>
TALKER_REPLACE	x  Customer talk_mob_w0


// 制服の女の子
MSG	x_00


MSG	n_01


MSG	x_02


MSG	n_03
IF 'GFC[ALC1]==1' {
    STOP_BGM	0 0
    PIC_FILL	&3 DARK
    
    MSG_HIDE 1
    WAIT 5
    HKDS	n C #<%> MONOLOGUE 
    MSG	n_04
    PIC_FADEOUT	&3 80
    WAIT 40
    TL 60 START_BGM  200
    

    HKDS	n CRB #<%>
    MSG	x_04


    MSG	n_05

DOTL
}