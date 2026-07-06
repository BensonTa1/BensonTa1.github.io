include "core_rf_v2d4.lib.scs" section=tt                // ss, snfp, tt, fnsp, ff       
include "io_rf_v2d3.lib.scs" section=tt                  // ss, snfp, tt, fnsp, ff
include "l_slcr20k_rf_v2d3.lib.scs" section=typ          //	min,  typ, max
include "mimcapm_rf_v2d3.lib.scs" section=typ            //	min,  typ, max
include "mm180_mimcap_v101.lib.scs" section=mimcaps_typ  //* mimcaps_typ, mimcaps_max, mimcaps_min
include "mm180_reg18bpw_v123.lib.scs" section=tt         //* tt, ff, ss, fnsp, snfp
include "mm180_reg18_v124.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp
include "mm180_reg33bpw_v123.lib.scs" section=tt         //* tt, ff, ss, fnsp, snfp     
include "mm180_reg33_v114.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp
include "mm180_res_v141.lib.scs" section=res_typ         //* res_typ, res_max, res_min 
include "mm180_zvt18_v121.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp
include "mm180_zvt33_v113.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp
include "mm180_lvt33_v113.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp   
include "mm180_lvt18_v113.lib.scs" section=tt            // tt, ff, ss, fnsp, snfp
include "pad_rf_v2d3.lib.scs" section=typ                //	min, typ, max
include "rnhr_rf_v2d4.lib.scs" section=typ               //	min, typ, max
include "rnnpo_rf_v2d4.lib.scs" section=typ              //	min, typ, max
include "rnppo_rf_v2d4.lib.scs" section=typ              //	min, typ, max
include "vardiop_rf_v2d3.lib.scs" section=typ            //	min, typ, max
include "varmis_18_rf_v2d3.lib.scs" section=typ          //	min, typ, max
include "mm180_bjt_v121.lib.scs" section=tt_bip          //* tt_bip, ff_bip, ss_bip      
include "mm180_diode_v113.mdl.scs"                       //NO Corner

*include "mm180_reg18_v124_mc_corner.lib.scs" section= mc  // mc, tt, ff, ss, fnsp, snfp, ff_g, ss_g, fnsp_g, snfp_g 
*include "mm180_reg33_v114_mc_corner.lib.scs" section= mc  // mc, tt, ff, ss, fnsp, snfp, ff_g, ss_g, fnsp_g, snfp_g  
*include "mm180_bjt_v131_mc_corner.lib.scs" section= mc    // mc, tt, ff, ss
*include "mm180_res_v141_mc_corner.lib.scs" section= mc    // mc, tt, ff, ss
*include "rnnpo_rf_v2d4_mc_corner.lib.scs" section= mc    // mc, tt, ff, ss
*include "rnppo_rf_v2d4_mc_corner.lib.scs" section= mc    // mc, tt, ff, ss

//********************************************************************************
//* Library : *
//*  
//*       1. mm180_bjt_v121.lib.scs  (BJT model)
//*       Model Name : 
//*       pnp_v50x50_mm ............. 5umx5um Vetical PNP
//*       pnp_v100x100_mm ............. 10umx10um Vetical PNP
//*  
//*       2. mm180_diode_v113.mdl.scs  (Diode model)
//*       Model Name : 
//*       dion_mm ............. N+/P-well diode
//*       diop_mm ............. P+/N-well diode
//*       dionw_mm ............. N-well/P-sub diode
//*  
//*       3. mm180_mimcap_v101.lib.scs  (MIM capacitance model)
//*       Model Name : 
//*       mimcaps_mm ............. MIM capacitor
//*  
//*       4. mm180_reg18bpw_v123.lib.scs  (Regular Vt 1.8V Model)
//*       Model Name : 
//*       n_bpw_18_mm ............. 1.8V NMOS
//*  
//*       5. mm180_reg33bpw_v123.lib.scs  (Regular Vt 3.3V Model)
//*       Model Name : 
//*       n_bpw_33_mm ............. 3.3V NMOS
//*  
//*       6. mm180_res_v141.lib.scs  (Resistor model)
//*       Model Name : 
//*       rnnpo_mm ............. Non Salicide N+ poly resistor
//*       rnppo_mm ............. Non salicide P+ poly resistor
//*       rnhr1000_mm ............. Non salicide HR poly resistor
//*  
//********************************************************************************
//********************************************************************************
//* Library:
//*                                                                                                                                      
//* 1.mm180_reg18_v124_mc_corner.lib.scs                                                                                                    
//*       (UMC 0.18um 1.8V LMixed-Mode and RFCMOS process Spice Model )                                                                    
//*       Model Name:                                                                                                                    
//*       n_18_mm ............. 1.8V NMOS Model                                                                                          
//*       p_18_mm ............. 1.8V PMOS Model                                                                                          
//*                                                                                                                                      
//*    2. mm180_reg33_v114_mc_corner.lib.scs                                                                                                  
//*       (UMC 0.18um 1.8V LMixed-Mode and RFCMOS process Spice Model)                                                                 
//*       Model Name:                                                                                                                    
//*       n_33_mm ............. 3.3V NMOS Model                                                                                        
//*       p_33_mm ............. 3.3V PMOS Model                                                                                        
//*  
//*    3. mm180_bjt_v131_mc_corner.lib.scs                                                                                                   
//*       (BJT Model)                                                                 
//*       Model Name:                                                                                                                    
//*       pnp_v50x50_mm ............. 4.5umx4.5um Vetical PNP Model                                                                        
//*       pnp_v100x100_mm ............. 9umx9um Vetical PNP Model                                                                        
//*                                                                                                                                    
//*     4. mm180_res_v141_mc_corner.lib.scs                                                                                             
//*       (Resistor Model)                                                                                                                  
//*       Model Name:                                                                                                                    
//*   rnnpo_mm ............... Non salicide N+ poly resistor model                                                                                                                
//*   rnppo_mm ................ Non salicide P+ poly resistor  model                                                                                                                
//*    rnhr1000_mm .................. Non salicide HR poly resistor subcircuit netlist for typical case
//*********************************************************************************************************************
//  *************************************************************************************************
//
//       1. mm180_reg18_v124.lib.scs
//       (UMC 0.18um Regular Vt 1.8V Mixed Mode process Spice Model )
//       Model Name:
//       n_18_mm ............. 1.8V NMOS Model
//       p_18_mm ............. 1.8V PMOS Model
//
//       2. mm180_reg33_v114.lib.scs
//       (UMC 0.18um Regular Vt 3.3V Mixed Mode process Spice Model )
//       Model Name:
//       n_33_mm ............. 3.3V NMOS Model
//       p_33_mm ............. 3.3V PMOS Model
//
//       3. mm180_lvt18_v113.lib.scs
//       (UMC 0.18um Low Vt 1.8V Mixed Mode process Spice Model )
//       Model Name:
//       n_lv_18_mm ............. 1.8V NMOS Model
//       p_lv_18_mm ............. 1.8V PMOS Model
//
//       4. mm180_lvt33_v113.lib.scs
//       (UMC 0.18um Low Vt 3.3V Mixed Mode process Spice Model )
//       Model Name:
//       n_lv_33_mm ............. 3.3V NMOS Model
//       p_lv_33_mm ............. 3.3V PMOS Model
//
//       5. mm180_zvt18_v121.lib.scs
//       (UMC 0.18um Zero Vt 1.8V Mixed Mode process Spice Model )
//       Model Name:
//       n_zero_18_mm ............. 1.8V NMOS Model
//
//       6. mm180_zvt33_v113.lib.scs
//       (UMC 0.18um Zero Vt 3.3V Mixed Mode process Spice Model )
//       Model Name:
//       n_zero_33_mm ............. 3.3V NMOS Model
//
//
//       7. mm180_diode_v113.mdl.scs
// 	     (Diode Model)
// 	     Model Name:
// 	     dion_mm ............. N+/P-well diode model
// 	     diop_mm ............. P+/N-well diode model
// 	     dionw_mm ............ N-well/P-sub diode model
//
//       8. mm180_bjt_v121.lib.scs
//       (BJT Model)
//       Model Name:
//       pnp_v50x50_mm ............. 5umx5um Vetical PNP Model
//       pnp_v100x100_mm ........... 10umx10um Vetical PNP Model
//
//       9. mm180_res_v141.lib.scs
//       (Resistor Models)
//       Model Name:
//       rnnpo_mm ...................Non Salicide N+ poly resistor model
// 	     rnppo_mm ...................Non salicide P+ poly resistormodel
// 	     rnhr1000_mm ................Non salicide HR poly resistor model
//
//       10. mm180_mimcap_v101.lib.scs
//       (MIM capacitor Model)
//       Model Name:
//       mimcaps_mm .................MIM capacitor
//
//
//*****************************************************************************************************************
//**********************************************

//
// 1.     1.8V RFNMOS : n_l18w500_18_rf   n_p07w500_18_rf
// 3:     1.8V RFPMOS : p_l18w500_18_rf   p_p07w500_18_rf 
//include  "./core_rf_v2d4.lib.scs"	section= tt		// 	ss, snfp, tt, fnsp, ff 
// 5.	3.3V  RFNMOS :  n_l34w500_33_rf   n_p07w500_33_rf 
// 7.	3.3V  RFPMOS : p_l34w500_33_rf   p_p07w500_33_rf
//include  "./io_rf_v2d3.lib.scs"       section= tt		//	ss, snfp, tt, fnsp, ff
// 9. 	MIM CAPACITOR MODEL :  mimcapm_rf  
//include  "./mimcapm_rf_v2d3.lib.scs"	section= typ		//	min,  typ, max
// 10.	SPIRAL INDUCTOR MODEL : l_slcr20k_rf 
//include  "./l_slcr20k_rf_v2d3.lib.scs"	section= typ		//	min,  typ, max
// 11.	MIS VARACTOR MODEL :  varmis_18_rf 
//include  "./varmis_18_rf_v2d3.lib.scs" 	section= typ		//	min,  typ, max
// 12.	P+/N VARACTOR MODEL :  vardiop_rf 
//include  "./vardiop_rf_v2d3.lib.scs"	section= typ		//	min, typ, max
// 13.	N+ Poly RESISTOR MODEL : rnnpo_rf 
//include  "./rnnpo_rf_v2d3.lib.scs"	section= typ		//	min, typ, max
// 14.	P+ Poly RESISTOR MODEL : rnppo_rf 
//include  "./rnppo_rf_v2d3.lib.scs"	section= typ		//	min, typ, max
// 15.	HR Poly RESISTOR MODEL : rnhr_rf 
//include  "./rnhr_rf_v2d3.lib.scs"	section= typ		//	min, typ, max
// 16	Pad : pad_rf
//include  "./pad_rf_v2d3.lib.scs"		section= typ		//	min, typ, max
// end of the control file  
                     
