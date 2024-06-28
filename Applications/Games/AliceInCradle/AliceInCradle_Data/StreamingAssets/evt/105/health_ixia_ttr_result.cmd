
TALKER	n L   
TALKER	i R

IFNDEF _final_result
    _final_result=1

IF $_final_result'==1' {
    // プレイヤーの勝ち
    // イクシャに勝った!
    PIC   n a_3/a0__F1__f3__m8__b1_u0    
    PIC_MP	n KIR
    PIC   i i/a00L3R3__F2__f2__m3__b1_u0    
    PIC_MP  i LAG
    

    IF 'rand[2]==0' {
        MSG	i_000
    } ELSE {
        MSG	i_010
    }


    
} ELSIF $_final_result'==0' {
    // イクシャに負けた
    PIC   i i/a00L1R2__F1__f1__m1__b3_u2    
    PIC_MP  i ONP
    PIC   n a_2/a0L1R3__F2__m6__b1_u0    
    PIC_MP  n SWT2
    
    IF 'rand[2]==0' {
        MSG	i_100


        MSG	n_101
    } ELSE {

        MSG	i_110


        MSG	n_111
    }
}



PIC_HIDE_ALL	 
