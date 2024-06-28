GREETING @ 20
#MS '@#[%]'
HKDS	x CB #<mobo>
TALKER_REPLACE	x   elf_man talk_mob_w1
//GOTO _DEBUG

// 同所 他のモブ2 (青年)
IF '!noel_torned' {
    WAIT 20
    IF 'GFC[MOB0]!=1' {
        MSG	x_00
        GFC_SET MOB0 1
    } ELSE {
        MSG	x_01
        GFC_SET MOB0 0
    }
} ELSE {
    IF 'GFC[STATIONMAN]==0' {
        MSG	x_02
        GFC_SET STATIONMAN 1
    } ELSIF 'GFC[STATIONMAN]==1' {
        // ノエルの服が破れてる状態で青年と(何度も)話す
        MSG	x_03
        GFC_SET STATIONMAN 2
    } ELSIF 'GFC[STATIONMAN]==2' {
        MSG	x_04
        GFC_SET STATIONMAN 3

    } ELSIF 'GFC[STATIONMAN]==3' {
        MSG	x_05
        GFC_SET STATIONMAN 4
    } ELSIF 'GFC[STATIONMAN]==4' {
        MSG	x_06
        GFC_SET STATIONMAN 5
    } ELSIF 'GFC[STATIONMAN]==5' {
        MSG	x_07
        GFC_SET STATIONMAN 6

    } ELSIF 'GFC[STATIONMAN]==6' {
        LABEL _DEBUG
        GFC_SET STATIONMAN 7
        MSG	x_08
        MSG_HOLD
        SELECTARRAY_CLEAR    
        SELECT_FOCUS_RANDOM_TALK STATIONMAN
        _already=~GFC[MOB0]&7==2
        SELECTARRAY	&&Select_noproblem NOP '' $_already
        _already=~GFC[MOB0]&7==3
        SELECTARRAY	&&Select_weird WEIRD '' $_already
        SELECT -1
        // ========================
        LABEL NOP
        MSG	x_09
        GFC_SET MOB0 2+(GFC[MOB0]&8)
        SEEK_END
        // ========================
        LABEL WEIRD
        GFC_SET MOB0 3+(GFC[MOB0]&8)
        MSG	x_10
        SEEK_END
    } ELSIF 'GFC[STATIONMAN]==7' {
        IF 'GFC[MOB0]<8' {
            MSG	x_11
            GFC_SET MOB0 GFC[MOB0]+8
            GFC_SET STATIONMAN 0
        } ELSE {
            MSG	x_15
            GFC_SET STATIONMAN 8
        }

    } ELSIF 'GFC[STATIONMAN]==8' {
        MSG	x_16
    }


}


