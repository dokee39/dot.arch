
// 15-A:  男性のエルフAとBの会話。大型に対してどれだけダメージを与えたかで盛り上がっている。ノエルには目もくれない


GREETING	L 30
HKDS	x CCLB #<army_c>   
TALKER_REPLACE	x Army   talk_mob_m2
#MS '@L'


IF '!noel_torned' {
    IF 'GFC[MOB0]==0' {
        GFC_SET MOB0 1
        MSG	x_00
    } ELSE {
        MSG	x_01
    }
} ELSE {
    IF 'GFC[MOB0]<4' {
        GFC_SET MOB0 4
        MSG	x_02
    } ELSE {
        TALKER n L

        MSG	x_03
        PIC   n a_3/a1__F1__f3__m1__b3_uo    
        PIC_MP	n BLS|SWT2 
        
        MSG	n_04
        PIC_HIDE_ALL	
        
        #MS '@R'
        MSG	x_05
    }

}


#MS '@R'