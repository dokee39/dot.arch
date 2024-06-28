// _1: メッセージを出す場合 1
// 失敗した場合 _rslt=0
_rslt=1
UI_RESTROOM_MENU_HILIGHT

IFNDEF __map
    DEF_CURMAP __map

IFSTR $__map IS 'house_hall' {
    IF 'PVV==8' {
        IF 'noel_torned||noel_cloth_dirty' {
            _rslt=0
            IF $1 {
                WAIT 20
                IF 'noel_torned' {
                    PIC   nb a_toilet/a0B__F1__m3__ua    
                } ELSE {
                    PIC   nb a_toilet/a0__F1__m3__ua    
                }
                MSG s01_restroom*n_00
            } ELSE UI_RESTROOM_MENU_HILIGHT shower_clean_cure_cloth
        }
        IF 'noel_bote[0]' {
            _rslt=0
            IF $1 {
                WAIT 20
                PIC   nb a_toilet/a0__F1__m2__u2      
                MSG s01_restroom*n_01
            } ELSE UI_RESTROOM_MENU_HILIGHT restroom_cure_egged
        }
    }
}