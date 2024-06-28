%TALK_TARGET_TTT 1
%DEFINE_ON_POINT row..Ev_restroom
{
    /* ___ restroom ___ */
    %CHECK_DESC EV_access_restroom
    check = {
        CHANGE_EVENT ___House/noelhouse_restroom 0 1 '' Ev_restroom 40
    }
}  

_student_door=Ev_door2
_student_door_x=0
_sutudent0_x!
_student0_evt!

IF 'PVV==105&&GFC[IXA1]>=4' {
   IF 'GFC[ALM0]==0' {
      // アルマが待機
        _student_door_x=-320
        /* ___ alma ___ */
        {
            %SIZE 12 68
            %PT Ev_door2.b 34 0
            %PXL sub_l
            %PHY
            %POSE stand_nocane
            %SP_SHIFT 0 10.5
            %AIM R
            talk = 105/scl_hall_alma
        }
        IF '(GFC[ALM1]&1)==0' {
            %DEFINE_ON_POINT row..Ev_door2_near
            /* ___ alma_near ___ */
            {
                stand = {
                    #CALL alma talk
                }
            }
            %DEFINE_ON_POINT   
        }

   } ELSE {
       _student_door_x=-280
       _sutudent0_x=72
       _student0_evt=105/scl_hall_classroom_mob_00
       %DEFINE_ON_POINT row..Ev_door2
       /* ___ 105_door ___ */
       {
           %CHECK_DESC EV_access_into
            check = 105/scl_hall_go_class
       }  
       %DEFINE_ON_POINT   
       
       
   }
}
IF 'PVV==106&&GFC[ALM1]==0' {
    /* ___ alma ___ */
    {
        %SIZE 12 68
        %PT Ev_door2.b 504 0
        %PXL sub_l
        %PHY
        %POSE stand
        %SP_SHIFT 0 10.5
        %AIM L
        %TALK_TARGET_TTT 0
        trigger_a = 105/main_classroom_after
    }

    /* ___ student_0 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_thin_student stand
        %PT	Ev_door2 -30 0
        %AIM L
        %MOVE	WALKAROUND_MAP
        %TALK_TARGET_TTT 0
        talk = 
    }


    /* ___ student_1 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_young_5 stand
        %PT	Ev_door2  50 0
        %AIM R
    %MOVE	WALKAROUND_MAP
    }

} ELSE {
    /* ___ student_0 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_thin_student stand
        IFDEF _sutudent0_x {
            %PT	$_student_door  $_sutudent0_x 0
        } ELSE {
            %PT	$_student_door ~90+($_student_door_x) 0
        }
        %AIM R
        %TALK_TARGET_TTT 0
        IFDEF _student0_evt {
            talk = $_student0_evt
            %TALK_TARGET_TTT 1
        }
    }


    /* ___ student_1 ___ */
    {
        %SIZE 12 78
        %MOBG	woman_elf_young_5 stand
        %PT	$_student_door  ~140+($_student_door_x) 0
        %AIM L
        %MOVE	WALKAROUND_LR
    }
}


/* ___ student_2 ___ */
{
    %SIZE 12 78
    %MOBG	woman_elf_thin_sudent_7 stand
    %POS_RANDW
    %MOVE	WALKAROUND_MAP
}
