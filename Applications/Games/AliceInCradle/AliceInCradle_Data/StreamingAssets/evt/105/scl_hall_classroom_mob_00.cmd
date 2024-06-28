// アルマに駅で会っている 教室扉前モブ
GREETING	R 10
TALKER_REPLACE	mob  Mob talk_mob_w3
HKDS	mob LT #<student_0> 
HKDS	n CCRT #<%>  



WAIT 20

// グラウンドで会った／もう一度会話
IF '(GFC[ALM1]&5)==5' {
    
    MSG	mob_07


    MSG	n_08

} ELSE {
    IF '(GFC[ALM1]&4)==0' {

        MSG	mob_00


        MSG	n_01


        MSG	mob_02


        MSG	n_03


        MSG	mob_04
        GFC_SET ALM1 |=4
    }
    MSG	mob_05

    // グラウンドで会った

    IF '(GFC[ALM1]&1)==1' {
        MSG	n_05
    } ELSE {
        // グラウンドで会ってない
        MSG	n_06
    }
}