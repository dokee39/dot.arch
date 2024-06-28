#SND_LOAD ev_city
WAIT 20


HKDS	ow RB #<owl>  

PE ZOOM2 80
#MS_ % '>>[Ev_sphere -20,0 <<0.03] P[collect] @RT'
#MS_ owl '@L w15 P[walk] >+[-10,0 :25] P[stand]'
WAIT 30

MSG	ow_00
ENGINE MvEvtMuseumOwl SPHERE_FLASH

museum_loadonce!
INIT_MAP_MATERIAL city_in_museum 1
WAIT 10

WAIT 100
GFC_SET MUS0 2
SCN_MANUAL_BGM_REPLACE 'BGM_houkago_no_hitotoki'
WAIT_FN MAP_TRANSFER
START_GMAIN
START_GDRAW
<LOAD>
museum_t03=1
#CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
WAIT 1
// => ___city_museum/t03
