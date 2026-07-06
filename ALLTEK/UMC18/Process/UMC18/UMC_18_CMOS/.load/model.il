/*###############################################################################
# If any value of this file is modified,					#
# please use update functions to update the new value.				#
#										#
#   1)	In the CIW window, use the following command:				#
#	load("./UMC_18_CMOS/.load/Default_Value.180") to update the		#
#	default values.								# 
#										#
#   2)	Open a schematic window with UMC_18_CMOS devices, and then type the	#
#	command "update_old_schematic" in the CIW window.			#
#       Note: Error will occur if you do not open a schematic.			#
#										#
#   3)  Remember to download the latest model files from UMC to ensure correct	#
#       simulation results.							#
#										#
################################################################################*/
; SPEC NO:G-02-MIXEDMODE/RFCMOS18-1.8V/3.3V-1P6M-MMC-EDR 
;					Ver:1.2 Phase:1 Approved Date:11/05/2002

/*********************************************************
*******************      Resistor      ******************* 
*********************************************************/
;The following parameters are work with this equation 
;r = (2*Rend+Rsh*(L+deltaL))/(W+deltaW)
;******************* MM part *****************************
;=================== Sheet Resistance=====================
; page 13
Rsh_rnnpo   = 113
Rsh_rnppo   = 352
Rsh_rnhr    = 1039
; page 12
Rsh_rnnd    = 80
Rsh_rnpd    = 158.66
; page 11
Rsh_rsnpo   = 8
Rsh_rsppo   = 8
Rsh_rsnd    = 8
Rsh_rspd    = 8
Rsh_rsnwell = 415  ; Page 11 Typ value 
Rsh_rm1     = 77e-3
Rsh_rm2     = 62e-3  
Rsh_rm3     = 62e-3
Rsh_rm4     = 62e-3
Rsh_rm5     = 62e-3


;;;;            Top_Metal_thickness = "8K"      ;; for MM process ONLY
		Top_Metal_thickness = "20K"     ;; for MM & RF process

/***********   8K   ************
Rsh_rm6_8K     = 41e-3
************   8K   ***********/

Rsh_rm6_20K     = 20e-3

;=================== Rend ================================
; page 13
Rend_rnnpo   = 1.7e-5
Rend_rnppo   = 1.05e-4
Rend_rnhr    = 120e-6
Rend_rnnd    = 0
Rend_rnpd    = 0
Rend_rsnpo   = 0
Rend_rsppo   = 0 
Rend_rsnd    = 0 
Rend_rspd    = 0 
Rend_rsnwell = 0
Rend_rm1     = 0
Rend_rm2     = 0
Rend_rm3     = 0
Rend_rm4     = 0
Rend_rm5     = 0
Rend_rm6     = 0
;================== Delta Width ==========================
; page 13
deltaW_rnnpo   = -9.7e-8
deltaW_rnppo   = -4.6e-8
deltaW_rnhr    = -4.3e-8
; page 12
deltaW_rnnd    = 6.75e-8
deltaW_rnpd    = 8.7e-8
deltaW_rsnpo   = 0
deltaW_rsppo   = 0
deltaW_rsnd    = 0
deltaW_rspd    = 0
; page 11
deltaW_rsnwell = -3.2e-7
deltaW_rm1     = 0
deltaW_rm2     = 0
deltaW_rm3     = 0
deltaW_rm4     = 0
deltaW_rm5     = 0
deltaW_rm6     = 0
;================== Delta Length =========================
deltaL_rnnpo   = 0
deltaL_rnppo   = 0
;page 13
deltaL_rnhr    = -0.4e-6
deltaL_rnnd    = 0
deltaL_rnpd    = 0
deltaL_rsnpo   = 0
deltaL_rsppo   = 0
deltaL_rsnd    = 0
deltaL_rspd    = 0
deltaL_rsnwell = 0
deltaL_rm1     = 0
deltaL_rm2     = 0
deltaL_rm3     = 0
deltaL_rm4     = 0
deltaL_rm5     = 0
deltaL_rm6     = 0

;***********************  RF part  ***********************
;================== Sheet Resistance ======================
Rsh_RNNPO_RF   = 113
Rsh_RNPPO_RF   = 352
Rsh_RNHR_RF    = 1039
;================== Rend ==================================
Rend_RNNPO_RF  = 17e-6
Rend_RNPPO_RF  = 105e-6
Rend_RNHR_RF   = 120e-6
;================== Delta Width ===========================
deltaW_RNNPO_RF   = -0.097e-6
deltaW_RNPPO_RF   = -0.046e-6
deltaW_RNHR_RF    = -0.043e-6
;================== Delta Length ==========================
deltaL_RNNPO_RF   = 0
deltaL_RNPPO_RF   = 0
deltaL_RNHR_RF    = -0.4e-6



/*********************************************************
*******************      Capacitor      ******************
*********************************************************/
;======== MIM capacitor Parasitic capacitance ============
; page 14 for Metal/Metal Capacitor
MIM_parasitic_cap = 1e-3      ; F/m^2 
MIM_fring_cap     = 0.075e-9  ; F/m
;======== MOS capacitor Parasitic capacitance ============
; page 7 for 1.8V MOS
MOS_parasitic_cap = 822.2e-5  ; F/m^2
MOS_fring_cap     = 15.34e-11 ; F/m
;======== VARMIS_18_RF Parasitic capacitance =============
; page 7 for 1.8V MOS
VARMIS_18_RF_parasitic_cap      = 822.2e-5     ; F/m^2 
VARMIS_18_RF_fring_cap          = 15.34e-11    ; F/m
;======== VARDIOP_RF Parasitic capacitance =============
VARDIOP_RF_parasitic_cap      = 113.6e-5       ; F/m^2 
VARDIOP_RF_fring_cap          = 15.6e-11       ; F/m
