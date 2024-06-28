IF 'alchemy_lectured' {
    // レシピ取得
    IF '!GFB[ALCHEMY_RECIPE]' {
        %DEFINE_ON_POINT Ev_atelier_recipe
        /* ___ alchemy_recipe ___ */
        {
            check = ___Laevi/get_alchemy_recipe
        }
    } ELSIF 'ItemHas[recipe_collection]==0' {
        %DEFINE_ON_POINT
        /* ___ laevi ___ */
        {
            %SIZE 12 68
            %PXL sub_v
            %PHY	  
            %POSE invisible
            %SP_SHIFT 0 10.5
            %AIM R
            %PT Ev_laevi_out
            {
                trigger_a = ___Laevi/get_alchemy_recipe_laevi_attack
            }
        }
        %DEFINE_ON_POINT Ev_revenge_laevi
        /* ___ laevi_attack ___ */
        {
            stand = {
                #VANISH
                #CALL laevi TRIGGER_A
            }
        }

    } ELSE {
        IF 'GFB[ALCHEMY_RECIPE]' {
            
            %DEFINE_ON_POINT Ev_workbench
            /* ___ alchemy_workbench ___ */
            {
                %CHECK_DESC EV_access_workbench
                check = ___Laevi/alchemy_workbench
            }

        }
    }
}