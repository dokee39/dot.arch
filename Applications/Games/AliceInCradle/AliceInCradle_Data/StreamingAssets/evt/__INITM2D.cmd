
//GETITEM_NOANNOUNCE fruit_cherry0 3
//GETITEM_NOANNOUNCE fruit_apple0 5


loadver=~load_version
// DEBUG $loadver
IF '0<'$loadver'&&'$loadver'<9' {
    // 過去バージョンとの互換性
    GETITEM_NOANNOUNCE mtr_lily_bulb0 7 1
    GETITEM_NOANNOUNCE mtr_black_harb0 3 2
    GETITEM_NOANNOUNCE mtr_bottle0 1 0
}
IF '0<'$loadver'&&'$loadver'<31' {
    IF 'ItemHas[recipe_collection]'{
        IF 'ItemHas[Recipe_bottle0]==0'
            GETITEM_NOANNOUNCE Recipe_bottle0 1 0
        IF 'ItemHas[Recipe_mtr_bottle_life0]==0'
            GETITEM_NOANNOUNCE Recipe_mtr_bottle_life0 1 0
        IF 'ItemHas[Recipe_gummy_hp0]==0'
            GETITEM_NOANNOUNCE Recipe_gummy_hp0 1 0
        IF 'ItemHas[Recipe_gummy_mp0]==0'
            GETITEM_NOANNOUNCE Recipe_gummy_mp0 1 0
        IF 'ItemHas[Recipe_lunchbox]==0'
            GETITEM_NOANNOUNCE Recipe_lunchbox 1 0

    }
   
}
IF 'DEBUG&&load_version==0' {
    // GFC_SET_MX	 PRM3 7
   // GETITEM_NOANNOUNCE nightingale_bell 1 0
    
//    GETMONEY 3000
    // GETITEM_NOANNOUNCE oc_slot 2 0
    // GETITEM_NOANNOUNCE enhancer_slot 2 0
    // GETSKILL_NOANNOUNCE guard 
    // GETSKILL_NOANNOUNCE evade
}

IF 'PVV<1' {
    SF_SET ISUPPLY_forest_secret_lake_Object_Supply_water 1
}
IF 'PVV>=103||(PVV>=102 && GFC[IXA1]>=2)' {
    SF_SET M2D_LP_BRK_Breakable_home_thorn_bigstone 1
}
// IF 'PVV>=102 && PVV<106' {
//     SAVE_SAFEAREA_DEPERTURE house
// }
IF 'SkillHas[evade]' {
    // 
    GETSKILL_NOANNOUNCE ukemi
}

IF $loadver'<17 && '$loadver'>0' {
    // クエスト定義を行う
    IF 'PVV<6' {
        QUEST_PROGRESS p001_go_home 1 CH
    } ELSIF 'PVV<8' {
        QUEST_PROGRESS p002_primula 0 H
    } ELSIF 'PVV<10' {
        QUEST_PROGRESS p002_primula 1 H
    } ELSIF 'PVV<11' {
        QUEST_PROGRESS p002_primula 2 H
    } ELSIF 'PVV<100' {
        QUEST_PROGRESS p002_primula 3 H
    } ELSIF '100<=PVV&&PVV<=101' {
        QUEST_PROGRESS p100_talk_customer 0 H
    } ELSIF 'PVV==102' {
        // find ixia
        IF 'GFC[IXA0]<2' {
            QUEST_PROGRESS p101_find_ixia 0 H
        } ELSE {
            QUEST_PROGRESS p101_find_ixia 1 H
        }
    } ELSIF 'PVV<200' {
        IF 'PVV==103&&GFC[WLR0]==0' {
            QUEST_PROGRESS p102_go_grazia 0   H
        } ELSE {
            QUEST_PROGRESS p102_go_grazia 1   H
        }
        IF 'PVV==103&&GFC[WLR0]>0' {
        // walross event 
            QUEST_PROGRESS p103_walross 0 HF
            IF 'GFC[WLR0]==2' {
                QUEST_PROGRESS p103_walross 1 H
            } ELSIF 'GFC[WLR0]>2' {
                QUEST_PROGRESS p103_walross 3 CH
            }  
        }
        IF 'PVV==104&&GFC[IXA1]>0' {
            IF 'GFC[IXA1]==1' {
                QUEST_PROGRESS p104_ixia 1 HF
            } ELSIF 'GFC[IXA1]==2' {
                QUEST_PROGRESS p104_ixia 2 HF
            } 
            IF 'GFC[IXA1]&4>0' {
                QUEST_PROGRESS p104_ixia 3 HF
            }
        }
        IF 'PVV>=105' {
            WA_RECORD forest _forest_nusi_defeat
        }
    }
    // quest
}
