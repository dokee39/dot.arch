// テキスト:名前


GREETING L
IF '0&&DEBUG&&GFC[NOE3]==0' {
    GFC_SET NOE3 1
    GFC_SET TLD0 1
    GETITEM_NOANNOUNCE mtr_noel_egg 11 4
    GETITEM_NOANNOUNCE mtr_noel_juice0 4 2
    GETITEM_NOANNOUNCE mtr_onion 4 2
    GETITEM_NOANNOUNCE mtr_broccoli 3 1
    GETITEM_NOANNOUNCE mtr_waterplant 6 4
    GETITEM_NOANNOUNCE mtr_lettuce 3 0
    GETITEM_NOANNOUNCE mtr_wheat 20 0
    GETITEM_NOANNOUNCE Recipe_soup 1 
    GETITEM_NOANNOUNCE Recipe_bread 1 
    GETITEM_NOANNOUNCE Recipe_morning_set 1 
    GETITEM_NOANNOUNCE Recipe_sandwich 1 
    GETITEM_NOANNOUNCE Recipe_fried_egg 1 
    GETITEM_NOANNOUNCE mtr_pepper 3 2
    GETITEM_NOANNOUNCE mtr_rocksolt0 1 4
    GETITEM_NOANNOUNCE mtr_coal0 25 3
    GETITEM_NOANNOUNCE mtr_beast_skin0 30 0
    GETITEM_NOANNOUNCE mtr_beast_skin0 30 2
    GETITEM_NOANNOUNCE mtr_essence0 30 0
    GETITEM_NOANNOUNCE mtr_essence0 30 3
    GETITEM_NOANNOUNCE mtr_weed0 50 3
    GETITEM_NOANNOUNCE mtr_glass0 60 3
    GETITEM_NOANNOUNCE mtr_amethyst0 20 3
    GETITEM_NOANNOUNCE special_inventory0 10 0
    GFB_SET ALCHEMY_RECIPE 1
    #CMDRELOAD
    
    //GETITEM_NOANNOUNCE lunchbox 2 0
}



IF 'GFB[ALCHEMY_RECIPE]==0' {
    STOP_LETTERBOX
    HKDS	n CT #<%>
    MSG n_00
    IF '!alchemy_lectured' {
        MSG n_01
    }
    SEEK_END
}
ALCHEMY alchemy_cutin/f_laevi
