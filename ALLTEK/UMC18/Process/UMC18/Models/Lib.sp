.lib 'core_rf_v2d5.lib' tt                        * tt, ff, ss, fnsp, snfp
.lib 'io_rf_v2d4.lib' tt                          * tt, ff, ss, fnsp, snfp
.lib 'l_slcr20k_rf_v2d3.lib' typ                  * typ, max, min
.lib 'mimcapm_rf_v2d3.lib' typ                    * typ, max, min
.lib 'mm180_mimcap_v101.lib' mimcaps_typ          * mimcaps_typ, mimcaps_max, mimcaps_min
.lib 'mm180_reg18bpw_v123.lib' TT                 * tt, ff, ss, fnsp, snfp
.lib 'mm180_reg18_v124.lib' TT                    * tt, ff, ss, fnsp, snfp         
.lib 'mm180_reg33bpw_v123.lib' TT                 * tt, ff, ss, fnsp, snfp
.lib 'mm180_reg33_v114.lib' TT                    * tt, ff, ss, fnsp, snfp         
.lib 'mm180_res_v141.lib' res_typ                 * res_typ, res_max, res_min
.lib 'mm180_zvt18_v121.lib' TT                    * tt, ff, ss, fnsp, snfp
.lib 'mm180_zvt33_v113.lib' TT                    * tt, ff, ss, fnsp, snfp
.lib 'mm180_lvt33_v113.lib' TT                    * tt, ff, ss, fnsp, snfp
.lib 'mm180_lvt18_v113.lib' TT                    * tt, ff, ss, fnsp, snfp
.lib 'pad_rf_v2d3.lib' typ                        * typ, max, min
.lib 'rnhr_rf_v2d3.lib' typ                       * typ, max, min
.lib 'rnnpo_rf_v2d3.lib' typ                      * typ, max, min
.lib 'rnppo_rf_v2d3.lib' typ                      * typ, max, min
.lib 'vardiop_rf_v2d3.lib' typ                    * typ, max, min
.lib 'varmis_18_rf_v2d3.lib' typ                  * typ, max, min
.lib 'mm180_bjt_v121.lib' tt_bip                  * tt_bip, ff_bip, ss_bip 
.inc 'mm180_diode_v113.mdl'                       * No Corner

*.lib 'mm180_reg18_v124_mc_corner.lib' mc                   * mc, tt, ff, ss, fnsp, snfp, ff_g, ss_g, fnsp_g, snfp_g  
*.lib 'mm180_reg33_v114_mc_corner.lib' mc                   * mc, tt, ff, ss, fnsp, snfp, ff_g, ss_g, fnsp_g, snfp_g  
*.lib 'mm180_bjt_v131_mc_corner.lib' mc                     * mc, tt, ff, ss                                          
*.lib 'mm180_res_v141_mc_corner.lib' mc                     * mc, tt, ff, ss                                          
*.lib 'rnnpo_rf_v2d3_mc_corner.lib' mc			  * mc, tt, ff, ss 
*.lib 'rnppo_rf_v2d3_mc_corner.lib' mc			  * mc, tt, ff, ss 

********************************************************************************
* Library : *                                                                   
*                                                                               
*       1. mm180_bjt_v121.lib  (BJT model)                                      
*       Model Name :                                                            
*       pnp_v50x50_mm ............. 5umx5um Vetical PNP                         
*       pnp_v100x100_mm ............. 10umx10um Vetical PNP                     
*                                                                               
*       2. mm180_diode_v113.mdl  (Diode model)                                  
*       Model Name :                                                            
*       dion_mm ............. N+/P-well diode                                   
*       diop_mm ............. P+/N-well diode                                   
*       dionw_mm ............. N-well/P-sub diode                               
*                                                                               
*       3. mm180_mimcap_v101.lib  (MIM capacitance model)                       
*       Model Name :                                                            
*       mimcaps_mm ............. MIM capacitor                                  
*                                                                               
*       4. mm180_reg18bpw_v123.lib  (Regular Vt 1.8V Model)                     
*       Model Name :                                                            
*       n_bpw_18_mm ............. 1.8V NMOS                                     
*                                                                               
*       5. mm180_reg33bpw_v123.lib  (Regular Vt 3.3V Model)                     
*       Model Name :                                                            
*       n_bpw_33_mm ............. 3.3V NMOS                                     
*                                                                               
*       6. mm180_res_v141.lib  (Resistor model)                                 
*       Model Name :                                                            
*       rnnpo_mm ............. Non Salicide N+ poly resistor                    
*       rnppo_mm ............. Non salicide P+ poly resistor                    
*       rnhr1000_mm ............. Non salicide HR poly resistor                 
*                                                                               
********************************************************************************
********************************************************************************
* Library:
*                                                                                                                                      
*       1. mm180_reg18_v124_mc_corner.lib                                                                                                    
*       (UMC 0.18um 1.8V LMixed-Mode and RFCMOS process Spice Model )                                                                    
*       Model Name:                                                                                                                    
*       n_18_mm ............. 1.8V NMOS Model                                                                                          
*       p_18_mm ............. 1.8V PMOS Model                                                                                          
*                                                                                                                                      
*       2. mm180_reg33_v114_mc_corner.lib                                                                                                  
*       (UMC 0.18um 1.8V LMixed-Mode and RFCMOS process Spice Model)                                                                 
*       Model Name:                                                                                                                    
*       n_33_mm ............. 3.3V NMOS Model                                                                                        
*       p_33_mm ............. 3.3V PMOS Model                                                                                        
*  
*       3. mm180_bjt_v131_mc_corner.lib                                                                                                   
*       (BJT Model)                                                                 
*       Model Name:                                                                                                                    
*       pnp_v50x50_mm ............. 4.5umx4.5um Vetical PNP Model                                                                        
*       pnp_v100x100_mm ............. 9umx9um Vetical PNP Model                                                                        
*                                                                                                                                    
*       4. mm180_res_v141_mc_corner.lib                                                                                             
*       (Resistor Model)                                                                                                                  
*       Model Name:                                                                                                                    
*       rnnpo_mm ............... Non salicide N+ poly resistor model                                                                                                                
*       rnppo_mm ................ Non salicide P+ poly resistor model                                                                                                                
*       rnhr1000_mm .................. Non salicide HR poly resistor subcircuit netlist for typical case
*                                                                                                                                      
*******************************************************************************************************************
***************************************************************************************************
*            
*       1. mm180_reg18_v124.lib
*       (UMC 0.18um Regular Vt 1.8V Mixed Mode process Spice Model )
*       Model Name:
*       n_18_mm ............. 1.8V NMOS Model
*       p_18_mm ............. 1.8V PMOS Model
*
*       2. mm180_reg33_v114.lib
*       (UMC 0.18um Regular Vt 3.3V Mixed Mode process Spice Model )
*       Model Name:
*       n_33_mm ............. 3.3V NMOS Model
*       p_33_mm ............. 3.3V PMOS Model
*
*       3. mm180_lvt18_v113.lib
*       (UMC 0.18um Low Vt 1.8V Mixed Mode process Spice Model )
*       Model Name:
*       n_lv_18_mm ............. 1.8V NMOS Model
*       p_lv_18_mm ............. 1.8V PMOS Model
*
*       4. mm180_lvt33_v113.lib
*       (UMC 0.18um Low Vt 3.3V Mixed Mode process Spice Model )
*       Model Name:
*       n_lv_33_mm ............. 3.3V NMOS Model
*       p_lv_33_mm ............. 3.3V PMOS Model
*
*       5. mm180_zvt18_v121.lib
*       (UMC 0.18um Zero Vt 1.8V Mixed Mode process Spice Model )
*       Model Name:
*       n_zero_18_mm ............. 1.8V NMOS Model
*
*       6. mm180_zvt33_v113.lib
*       (UMC 0.18um Zero Vt 3.3V Mixed Mode process Spice Model )
*       Model Name:
*       n_zero_33_mm ............. 3.3V NMOS Model
*
*
*       7. mm180_diode_v113.mdl
* 	    (Diode Model)
* 	    Model Name:
* 	    dion_mm ............. N+/P-well diode model
* 	    diop_mm ............. P+/N-well diode model
* 	    dionw_mm ............ N-well/P-sub diode model
*
*       8. mm180_bjt_v121.lib
*       (BJT Model)
*       Model Name:
*       pnp_v50x50_mm ............. 5umx5um Vetical PNP Model
*       pnp_v100x100_mm ........... 10umx10um Vetical PNP Model
*
*       9. mm180_res_v141.lib
*       (Resistor Models)
*       Model Name:
*       rnnpo_mm ...................Non Salicide N+ poly resistor model
* 	    rnppo_mm ...................Non salicide P+ poly resistormodel
* 	    rnhr1000_mm ................Non salicide HR poly resistor model
*
*       10. mm180_mimcap_v101.lib
*       (MIM capacitor Model)
*       Model Name:
*       mimcaps_mm .................MIM capacitor
*
******************************************************************************
**  Please refer to the spice model document for detailed information 
*
* 1. 1.8V RFNMOS : N_L18W500_18_RF   N_P07W500_18_RF
* 3: 1.8V RFPMOS : P_L18W500_18_RF   P_P07W500_18_RF 
*.lib  "./core_rf_v2d5.lib"	 tt		* 	ss, snfp, tt, fnsp, ff
* 5.	3.3V  RFNMOS :  N_L34W500_33_RF   N_P07W500_33_RF 
* 7.	3.3V  RFPMOS : P_L34W500_33_RF   P_P07W500_33_RF
*.lib  "./io_rf_v2d4.lib"        tt		*	ss, snfp, tt, fnsp, ff
* 9. 	MIM CAPACITOR MODEL :  MIMCAPM_RF  
*.lib  "./mimcapm_rf_v2d3.lib"	 typ		*	min,  typ, max
* 10.	SPIRAL INDUCTOR MODEL :
* L_SLCR20K_RF 
*.lib  "./l_slcr20k_rf_v2d3.lib"	 typ		*	min,  typ, max
* 11.	MIS VARACTOR MODEL :  VARMIS_18_RF 
*.lib  "./varmis_18_rf_v2d3.lib"  typ		*	min,  typ, max
* 12.	P+/N VARACTOR MODEL :
*  VARDIOP_RF 
*.lib  "./vardiop_rf_v2d3.lib"	 typ		*	min, typ, max
* 13.	N+ Poly RESISTOR MODEL : RNNPO_RF 
*.lib  "./rnnpo_rf_v2d3.lib"	 typ		*	min, typ, max
* 14.	P+ Poly RESISTOR MODEL : RNPPO_RF 
*.lib  "./rnppo_rf_v2d3.lib"	 typ		*	min, typ, max
* 15.	HR Poly RESISTOR MODEL : RNHR_RF 
*.lib  "./rnhr_rf_v2d3.lib"	 typ		*	min, typ, max
* 16	Pad : PAD_RF
*.lib  "./pad_rf_v2d3.lib"	 typ		*	min, typ, max
* end of the control file  
******************************************************************************
