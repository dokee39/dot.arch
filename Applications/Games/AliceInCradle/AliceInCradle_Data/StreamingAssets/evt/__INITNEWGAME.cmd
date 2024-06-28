STOP_LETTERBOX

IF '!DEBUGALLSKILL' {
    IF 'PVV<104&&'$loadver'<31' {
        IF 'MagicHas[PR_BURST]' {
            CHANGE_EVENT2	___INITM2D_V022_REMOVE_BURST   
        }
    }
}
IF $loadver'<17 && '$loadver'>0' {
    IF 'GFB[ALCHEMY_RECIPE]' {
        CHANGE_EVENT2	___INITM2D_V023_ATELIER   
    }
}

IF $loadver'<22 && '$loadver'>0' {
    IF 'PVV>=100' TOUCHITEM timecapsule
    IF 'PVV>=104' {
        TOUCHITEM ostrea_bomb
        TOUCHITEM mtr_curry
    }
}

IF $loadver'<27' {
    QUEST_REMOVE p999_trial_finished
    IF 'PVV<=105' {
        QUEST_REMOVE p105_grazia
    }
}


IF '0<'$loadver'&&'$loadver'<32' {
    CHANGE_EVENT2	___INITM2D_V025_ADDED_CHECK_KD
}

// バーの地下で取引を行った
IF 'GFC[BRTU]>=8' {
    IF '0<'$loadver'&&'$loadver'<32' {
        UIALERT Alert_new_config_on_barunder ALERT_BARU
        QUEST_REMOVE subquest_new_item_baru 
        QUEST_PROGRESS subquest_new_item_baru 0 H
    }
}
// ========================