// fasttravel 終了時に呼ぶ

IF 'PVV==102&&GFC[IXA1]<=1' {
    DEFINE_WHOLEMAP _
    IFSTR $_ IS forest {
        CHANGE_EVENT2	s11_1a
        AUTO_SAVE
    }
}