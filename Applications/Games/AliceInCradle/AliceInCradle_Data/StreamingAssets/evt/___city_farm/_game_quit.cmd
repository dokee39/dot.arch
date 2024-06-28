

PIC_FILL	&8 DARK
PIC_FADEIN	&8 25
DENY_SKIP
WAIT 25
LP_DEACTIVATE	Ev MGFarm
WAIT 5
PIC_FINE_ALL	
PIC_FADEOUT	&8 25
#MS_ % 'q >>[Ev_farmer.b -20,0] >+[-20,0 :40]'
#MS 'q >>[Ev_farmer] ## #; @#[%] w20 @#[%]'


IFDEF pre_cfg_autorun {
    CFG_SET autorun $pre_cfg_autorun
}

IFDEF pre_cfg_stick_thresh {
    CFG_SET stick_thresh $pre_cfg_stick_thresh
}

IFDEF farmgame {
    #MS_ farm_center_cam '>+[50,0]'
    // ゲームを実行していた    
    IF $farmgame'>=1' {
        REPLACE_BGM	5 30 0
    } ELSE {
        START_BGM	120
    }
}

pre_cfg_autorun!
pre_cfg_stick_thresh!

farmgame!
farmgame_tomsg_cow_angry!
farmgame_tomsg_low_gra!
WAIT_MOVE
ALLOW_FASTTRAVEL
EPSITU_FLUSH