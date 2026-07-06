capgen -C \
-prefixDevice "X",RCTM_R,mt1res,mt2res,mt3res,mt4res,mt5res,mt6res,mt7res,mt8res,nwod_r,nwsti_r,rnodl_r,rnods_r,rnodwo_r,rnpolyl_r,rnpolys_r,rnpolywo_r,rpodl_r,rpods_r,rpodwo_r,rppolyl_r,rppolys_r,rppolywo_r \
-blocking RCTM_R:0.001,ctm,cbm \
-blocking bvargt:0.001,poly,active,field \
-blocking pbvargt:0.001,poly,active,field \
-blocking pvargt:0.001,poly,active,field \
-blocking vargt:0.001,poly,active,field \
-lvs lvsfile -p2lvs p2lvsfile -lexclude poly \
-length_units meters -cap_unit 1 -cap_ground_layer psub -p poly,paxgate,active -add_via_effect metal1,active:0.175 -scale 1.0 .
