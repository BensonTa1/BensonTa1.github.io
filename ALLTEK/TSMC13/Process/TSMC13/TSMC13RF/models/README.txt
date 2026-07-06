
This document is to provide SPICE circuit simulation parameters for the tsmc 0.13um RF IC 1P8M process
in 1.2V/2.5V applications. Star-HSPICE (V-2004.03-SP1 and later version), CADENCE Spectre (6.0.0.89 and later 
version), Mentor Graphic Eldo (v6.3_3.1 and later version) and ADS (V2004A and later version) are used to
verify & QA the BSIM3v3 models. Accuracy & QA in other simulators are not guaranteed.




* **********************************************
* *             TSMC RF SPICE MODEL            **
* **********************************************
* This model has been modified for RF purpose.
*  
*    PROCESS :  0.13um Mixed-Signal SALICIDE(1P8M, 1.2V/2.5V)
*	           RF Spice Models
*    MODEL   :  BSIM3 ( V3.24 )
*    DOC. NO.:  T-013-MM-SP-001 
*    VERSION :  1.3 
*    DATE    :  Jan. 2, 2006
*
***********************************************************************************************
*   
*   This document is intended to be a RF design reference guide for those who 
*   use TSMC 0.13um RFIC 1P8M process in 1.2V/2.5V application. The 1.2V/2.5V
*   nominal Vt N/P MOS, MIM capacitor, spiral inductor, 1.2V/2.5V MOS varactor, 
*   junction varactor, resistor, and thick top metal interconnect models are included.
*
************************************************************************************************
This release note describes the new features and enhancements in model of 
CM018 RF Spice model reversion 0.3 relative to the previous release, version 1.0

Table of Contents

1.	Overview
2.	RF CMOS
3.	Inductor
4.	MiM_Cap
5.	Junction Varactor
6.	MOS Varactor
7.	RF Resistor
8.      RTMOM Capacitor

1. Overview
	(1) 4-T/active & 3-T/passive with layout optimization
	(2) P-cell based library
	(3) Default with DNW process
	(4) Geometry scalable model
	(5) Process scalable model
	(6) Different temperature S-parameter model
	    -40C < Temp. < 125C
	(7) Worst-case model
	(8) Valid frequency min(30GHz, fT/fsr)

2. RF CMOS
	(1) Fully scalable model (N, L, W)
	    1.2V CMOS: Lg: Lmin~0.35um; Nf:1~64; Wf: 1.2~10um
	    2.5V CMOS: Lg: Lmin~0.5 um; Nf:1~64; Wf: 1.2~10um
	(2) LOD model included
	(3) HF noise parameter look-up table

3. Inductor
	(1) STD and Symmetry and Center tap
	(2) Octagonal shape& guard-ring
	(3) 2-PI equivalent ckt model
	(4) 2D scalable with N & R @ different W:
            STD       : W/N/R=3,9,15,30/0.5~5.5/15~90
            Symmetry  : W/N/R=3,9,15,30/  1~6  /15~90
            Center tap: W/N/R=3,9,15,30/  1~5  /15~90  

4. MiM Capacitor
	(1) 1.0fF and 1.5fF MiMCAP wi/wo underground metal
        (2) 2D scalable: W/L=4~100/4~100 (L>=W)
        
5. Xj Varactor
	(1) 3D scalable N+/PW: W/L/N=2~64/0.3/4/1~96
	(2) STI capacitance modeled

6. MOS Varactor
	(1) 3D scalable 1.2V/2.5V NMOS/NW: W/L/N=0.5~2.5/0.3~2/4~128
	(2) 1.2V gate current model

7. RF Resistor
	(1) P+ type POLY resistor: 
		Silicided ressitor: 0.3um<=W<=10um, 0.45um<=L<=100um, 1<=S<=20
		RPO resistors:      1um  <=W<=10um, 2um „T<=L<=25um,  2<=S<=10
                HRI resistor:       1um  <=W<=2um,  2um „T<=L<=5um,   2<=S<=5
8. RTMOM Capacitor
        (1) 4D scalable
            8 <= nv <= 288, 8 <= nh <= 288, 0.21um <= s <= 0.4um, 3 <= lay <= 6

************************************************************************************************

   (1) MOS MODEL
        (a) 1.2V MOS MODEL :

              .lib RF_MOS : Typical model
              
              Model name       NF               L (um)           Wf (um)
                            low   high        low    high      low    high 
            -----------------------------------------------------------------              
              nmos_rf        1     64         0.13   0.35      1.2    10      NMOS with DNW     
            -----------------------------------------------------------------
              pmos_rf        1     64         0.13   0.35      1.2    10      PMOS with DNW     
            -----------------------------------------------------------------
              pmos_rf_nw     1     64         0.13   0.35      1.2    10      PMOS without DNW    
            -----------------------------------------------------------------
              nmos_rf_mis    1     64         0.13   0.35      1.2    10      NMOS with DNW and mismatch    
            -----------------------------------------------------------------
              pmos_rf_mis    1     64         0.13   0.35      1.2    10      PMOS with DNW and mismatch   
            -----------------------------------------------------------------
              pmos_rf_nw_mis 1     64         0.13   0.35      1.2    10      NMOS without DNW but with mismatch    
            -----------------------------------------------------------------
                          
       (b) 2.5V MOS MODEL :
           
              .lib RF_MOS : Typical model
              
              Model name         NF               L (um)           Wf (um)
                              low   high        low    high      low    high 
            -----------------------------------------------------------------              
              nmos_rf25        1     64         0.28   0.5       1.2    10      
            -----------------------------------------------------------------
              pmos_rf25        1     64         0.28   0.5       1.2    10      
           -----------------------------------------------------------------
              pmos_rf25_nw     1     64         0.28   0.5       1.2    10      
           -----------------------------------------------------------------                          
              nmos_rf25_mis    1     64         0.28   0.5       1.2    10   mismatch model   
            -----------------------------------------------------------------
              pmos_rf25_mis    1     64         0.28   0.5       1.2    10   mismatch model  
           -----------------------------------------------------------------
              pmos_rf25_nw_mis 1     64         0.28   0.5       1.2    10   mismatch model   
           ----------------------------------------------------------------- 

   (2) MIM CAPACITOR MODEL :
 
      HF model:
           1.0fF MiM_Cap w/i underground metal for 1PXM 4<=X<=8
           1.0fF MiM_Cap w/o underground metal for 1PXM 4<=X<=8
           1.5fF MiM_Cap w/i underground metal for 1PXM 4<=X<=8
           1.5fF MiM_Cap w/o underground metal for 1PXM 4<=X<=8

      ## library files:
      
      1. The 1.0fF MIM capacitors with underground metal are modeled with sub-circuit 'mimcap_um_1p0_sin_rf'
      2. The 1.0fF MIM capacitors without underground metal are modeled with sub-circuit 'mimcap_woum_1p0_sin_rf'
      3. The 1.5fF MIM capacitors with underground metal are modeled with sub-circuit 'mimcap_um_1p5_sin_rf'
      4. The 1.5fF MIM capacitors without underground metal are modeled with sub-circuit 'mimcap_woum_1p5_sin_rf'
       
             Model name           lt(um)            wt(um)            lay
                               low    high       low    high       low    high
      -------------------------------------------------------------------------
      mimcap_um_1p0_sin_rf       4     100         4     100       
      mimcap_woum_1p0_sin_rf     4     100         4     100         4       8
      mimcap_um_1p5_sin_rf       4     100         4     100       
      mimcap_woum_1p5_sin_rf     4     100         4     100         4       8
      mimcap_um_1p0_sin_rf_mis   4     100         4     100                      mismatch model
      mimcap_woum_1p0_sin_rf_mis 4     100         4     100         4       8    mismatch model
      mimcap_um_1p5_sin_rf_mis   4     100         4     100                      mismatch model
      mimcap_woum_1p5_sin_rf_mis 4     100         4     100         4       8    mismatch model
      -------------------------------------------------------------------------
             **lt: length dimension of top metal
             **wt: width dimension of top metal
             **lt >= wt
             **lay: Metal layer option (4,5,6,7,8)


   (3) SPIRAL INDUCTOR MODEL :
 
        ## library files:
       
       The Inductors are modeled with sub-circuit 'spiral_std' and 'spiral_sym' and 'spiral_sym_ct'

       .subckt spiral_std   : Standard model with space=3um(fixed w=3um,9um,15um,30um) for Inductance varies with turn(1/4 turn increments) and radius
       .subckt spiral_sym   : Symmetric model with space=3um(fixed w=3um,9um,15um,30um) for Inductance varies with turn(integral turn increments) and radius
       .subckt spiral_sym_ct: Symmetric(center-tapped) model with space=3um(fixed w=3um,9um,15um,30um) for Inductance varies with turn(odd turn increments) and radius
      
          Model name         turn(nr)        rad(um)
                            low   high     low   high
      ------------------------------------------------------
      spiral_std    W=3um   0.5   5.5      15     90
                    W=9um   0.5   5.5      15     90
                    W=15um  0.5   5.5      15     90
                    W=30um  0.5   5.5      15     90
      ------------------------------------------------------
      spiral_sym    W=3um    1     6       15     90
                    W=9um    1     6       15     90
                    W=15um   1     6       15     90
                    W=30um   1     6       15     90
      ------------------------------------------------------   
      spiral_sym_ct W=3um    1     5       15     90
                    W=9um    1     5       15     90
                    W=15um   1     5       15     90
                    W=30um   1     5       15     90
      ------------------------------------------------------   
      Note:The variable parameters of model are w, nr, rad, and lay(metal layer=4,5,6,7,or 8).


   (4) MOS VARACTOR MODEL : 

     ## library files:
     
      Model name          W                L       Branch  
      ----------------------------------------------------------
       moscap_rf      0.5um<=W<=2.0um  0.3um<=L<=1.6um    1<=G<=4    4<=B<=64          
       moscap_rf25    0.5um<=W<=2.0um  0.3um<=L<=1.6um    1<=G<=4    4<=B<=64     
       moscap_rf_nw   0.5um<=W<=2.0um  0.3um<=L<=1.6um    1<=G<=4    4<=B<=64          
       moscap_rf25_nw 0.5um<=W<=2.0um  0.3um<=L<=1.6um    1<=G<=4    4<=B<=64  
      ----------------------------------------------------------


   (5) JUNCTION VARACTOR MODEL :

       ## library files:
      
           
      Model name      L(um)         W(um)(w)       Finger(nr)  
      ---------------------------------------------------
       xjvar          0.3 4           2 64      1  96
       xjvar_nw       0.3 4           2 64      1  96
      ---------------------------------------------------


   (6) RESISTOR MODEL - HSPICE
	
      	Model name	
      ----------------------------------------------------------------------  
      rppolyl_rf       P+Poly w/i silicide  2um<=W<=10um,  0.45um<=L<=100um, 1<=sqr<=20
      rppolys_rf       P+Poly w/i silicide  0.3um<=W<2um,  0.45um<=L<=100um, 1<=sqr<=20
      rppolywo_rf      P+Poly w/o silicide  1um<=W<=10um,  2um<=L<=25um,     2<=sqr<=10
      rppolyhri_rf     P-Poly w/o silicide  1um<=W<=2um,   2um<=L<=5um,      2<=sqr<=5
      rppolyl_rf_mis   P+Poly w/i silicide  2um<=W<=10um,  0.45um<=L<=100um, 1<=sqr<=20 
      rppolys_rf_mis   P+Poly w/i silicide  0.3um<=W<2um,  0.45um<=L<=100um, 1<=sqr<=20
      rppolywo_rf_mis  P+Poly w/o silicide  1um<=W<=10um,  2um<=L<=25um,     2<=sqr<=10
      rppolyhri_rf_mis P-Poly w/o silicide  1um<=W<=2um,   2um<=L<=5um,      2<=sqr<=5

   (7) DISTRIBUTED RESISTOR MODEL

              Model name      structure                                                   
              -----------------------------------------                                   
              rppolyl_dis    Distributed P+ Poly w/i Silicide w>=2um                   
              rppolys_dis    Distributed P+ Poly w/i Silicide 0.13um<=w<2um            
              rnpolyl_dis    Distributed N+ Poly w/i Silicide w>=2um                   
              rnpolys_dis    Distributed N+ Poly w/i Silicide 0.13um<=w<2um            
              rppolywo_dis   Distributed P+ Poly w/o Silicide w>1um,sqr>2              
              rnpolywo_dis   Distributed N+ Poly w/o Silicide w>1um,sqr>2              
              rppolyhri_dis  Distributed P- Poly w/o Silicide w>1um,sqr>2                                 
              rppolyl_dis_mis    Distributed P+ Poly w/i Silicide w>=2um               
              rppolys_dis_mis    Distributed P+ Poly w/i Silicide 0.13um<=w<2um        
              rnpolyl_dis_mis    Distributed N+ Poly w/i Silicide w>=2um               
              rnpolys_dis_mis    Distributed N+ Poly w/i Silicide 0.13um<=w<2um        
              rppolywo_dis_mis   Distributed P+ Poly w/o Silicide w>1um,sqr>2              
              rnpolywo_dis_mis   Distributed N+ Poly w/o Silicide w>1um,sqr>2              
              rppolyhri_dis_mis  Distributed P- Poly w/o Silicide w>1um,sqr>2 
 
   (8) RTMOM CAPACITOR MODEL

        Model name       nv       nh       s(um)    lay
     -----------------------------------------------------------------------
        crtmom          8 288    8 288    0.21 0.4  3 6
     -----------------------------------------------------------------------

   (9) RAW DATA :

      ## raw data files:

        1.  README               : explain how to read the raw data format 
  
        2.  citi_MOS.zip         : for 1.2V N/PMOS GROUP and 2.5V N/PMOS GROUP 

        3.  citi_MIM.zip         : for MIM_capacitor GROUP

        4.  citi_IND.zip         : for Spiral_inductor GROUP

        5. citi_MOSVAR.zip      : for MOS_varactor GROUP

        6. citi_XJVAR.zip       : for Junction_varactor GROUP

        7. citi_RES.zip         : for resistor GROUP

	8. TM_interconnect.zip  : for Thick Metal interconnect GROUP 

   (10) UPDATE HISTORY :
      V1.3: 
           a. Added 1.2V hvt, 1.2V lvt, 2.5V svt and 2.5V lvt CMOS mismatch model
           b. Added RTMOM Baseband capacitor model
           c. Added mismatch model of 1.0fF/um^2 and 1.5fF/um^2 MIM
           d. updated 1.2V svt mismatch model from 3 wafer data to 3 lot data
      V1.2:
	   a. Added 1.2 CMOS statistical model
	   b. Revised 1.2 CMOS corner model
	   c. Added 1.2 CMOS mismatch model
	   d. Added Resistor mismatch model
	   e. Added 1.2/2.5V PMOS model without DNW
	   f. Added 1.0fF MiM_Cap without underground metal and 1.5fF MiM_Cap wi/wo underground metal 
	   g. Added Center-tapped inductor
	   h. Added Xj varactor without DNW
	   i. Updated 1.2/2.5V MOS Varactor W/L/G/B 4D scalable model
	   j. Added 1.2/2.5V MOS Varactor without DNW
	   k. Updated interconnect model
           l. Revised the MOS model format from subckt to inline subckt in SPECTRE
           m. Rename the parameter "scale" to "scale1" to avoid using ".option nokwscale" in netlist in ELDO
           n. Add ResModel.eldo in ELDO 

      V1.1:
           a. Updated spectre model card of MIM for convergency issue.
              Updated MIM target and tightened corner.
           b. Updated leakage current of 1.2V MOS Varactor 
           c. Updated corner model of 1.2V and 2.5V MOS Varactor.	
           d. Updated distributed resistor model
           e. Added HRI resistor rf model
              
      V1.0:
           a. Updated MOS model
           b. Updated MIM capacitor model.
           c. Updated inductor model.
           d. Updated MOS varactor model.
           e. Updated Junction varactor model.
           f. Add resistor model.
           g. Updated interconnect model.
      
      V0.3:
           a. Revised MIMCAP model.
           b. Revised Inductor model.
           c. Revised Interconnect model.
 
      V0.2:
           1. Correct typo in the document:
              a. Correct the number of branches(B) of 1.2V/2.5V MOS varactor form B=15 to B=30.
              b. Correct Fig. 6.1 and Fig. 6.5 from schematic layout to real layout.
              c. Correct Fig. 8.20 to Fig 8.27 for the updated MOS varactor.
           2. Modified node names in the model card for consistancy with the layout:
              a. Changed node names of "nd ng ns nb" to "D G S B" respectively in the subcuit 1.2V/2.5V N/P MOS.
              b. Changed node names of "n1 n2" to "Gate Bulk" respectively in the subcircuit MOS varactor.
              c. Changed node names of "p1 p2" to "Top Bottom" respectively in the subcircuit MIM and spiral inductors.
              d. Changed node names of "p1 p2" to "Anode Cathode" respectively in the subcircuit junction varactor.
           3. Simplified the model cards by including the library RF_MACRO in TT_RFMOS.
           4. Added VCR and TCR of M8T in the interconnect resistor table. 

      V0.2p2: 
           1. Created 2.5V PMOS models.
           2. Created 2.5V MOS varactor model.
           3. Updated 1.2V MOS varactor model.
           4. Created P+/Nwell junction varactor model.
           5. Added ADS V1.5 model.
           6. Added interconnect model.

      V0.2p1: Created 1.2V PMOS models.

      V0.1:   The same version as V0.1p2.

      V0.1p2: 
           1. Created MIM capacitor models.
           2. Created spiral inductor models.
           3. Model for Mentor Graphic Eldo v5.4_1.1 and/or later version is added.

      V0.1Z: Created 1.2V/2.5V NMOS and MOS varactor models.

