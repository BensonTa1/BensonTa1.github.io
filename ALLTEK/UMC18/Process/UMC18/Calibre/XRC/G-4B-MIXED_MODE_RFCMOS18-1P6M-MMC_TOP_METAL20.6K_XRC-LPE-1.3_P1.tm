 #
 #   initialize the infrastructure
 #
 if (!(isfuncdef techFindLayer)) {
    library (cat (getenv MGC_HOME) /pkgs/icxc/model_lib/ics.ma)
    techInit
 
    # NOTE: PLEASE DO NOT ALTER THE FOLLOWING FUNCTION
    func techGetVer {} {return v2007.3_27.17}
 
    #
    #   build a new technology.  note that the technology is attached
    #   to the global variable T
    #
    struct technology       T
 
    #
    #   add layers - order defined by profile
    #
    T = (buildTechnology G-4B-MIXED_MODE_RFCMOS18-1P6M-MMC_TOP_METAL20.6K_XRC-LPE-1.3_P1 unconditional "ff" "2d" "mc2d")
 }

untyped         L

# arguments:                                name   thick  type    diel  gds_layer)
# ------------------------- --------------------  ------  ----  ------  ---------

techAddLayer T ( buildLayer           field_base  1.0000    B   0.0000  0 )

techAddLayer T ( buildLayer      field_base_diel  0.4000    D   4.1000  0 )

techAddLayer T ( buildLayer                PLY_C  0.2000    C   0.0000  0 )
L = (techFindLayer T PLY_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.176 0.264 0.352 0.704)
} else {
   @L.widths = '(0.32)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T PLY_C spacings 0.244 0.2 0.844
   layerAddDimensions T PLY_C spacings 0.844 0.156 1
   layerAddDimensions T PLY_C spacings 1 1 5
} else {
   @L.spacings = '(0.244)
}
@L.bias = -0.0040

techAddLayer T ( buildLayer                 CONT  0.8500    V   0.0000  0 )
L = (techFindLayer T CONT)
@L.widths = '(0.2400)
@L.lengths = '(0.2400)
@L.spacings = '(0.2600)
@L.enclosures = '(0.1000)
@L.measured_from = "PLY_C"
@L.measured_to = "ME1_C"

techAddLayer T ( buildLayer           PLY_C_diel  0.0000    D   3.9000  0 )
layerSetPlanarity T PLY_C_diel "C"
layerSetHeight T PLY_C_diel "" 0.2
layerSetSWTHK T PLY_C_diel 0.02
layerSetSWSLOPE T PLY_C_diel 90.0

techAddLayer T ( buildLayer          PLY_C_diel2  0.0000    D   7.5000  0 )
layerSetPlanarity T PLY_C_diel2 "C"
layerSetHeight T PLY_C_diel2 "" 0.2
layerSetSWTHK T PLY_C_diel2 0.0425
layerSetSWSLOPE T PLY_C_diel2 90.0

techAddLayer T ( buildLayer          PLY_C_diel3  0.0500    D   7.5000  0 )
layerSetPlanarity T PLY_C_diel3 "C"
layerSetHeight T PLY_C_diel3 "" 0.25
layerSetSWTHK T PLY_C_diel3 0.05
layerSetSWSLOPE T PLY_C_diel3 90.0

techAddLayer T ( buildLayer          PLY_C_diel4  1.0000    D   4.1000  0 )

techAddLayer T ( buildLayer                ME1_C  0.4800    C   0.0000  0 )
L = (techFindLayer T ME1_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.245 0.3675 0.49 0.98)
} else {
   @L.widths = '(0.45)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T ME1_C spacings 0.235 0.2 0.835
   layerAddDimensions T ME1_C spacings 0.835 0.165 1
   layerAddDimensions T ME1_C spacings 1 1 5
} else {
   @L.spacings = '(0.41)
}
@L.bias = 0.0050

techAddLayer T ( buildLayer                 VIA1  0.8000    V   0.0000  0 )
L = (techFindLayer T VIA1)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.0000)
@L.measured_from = "ME1_C"
@L.measured_to = "ME2_C"

techAddLayer T ( buildLayer           ME1_C_diel  0.0850    D   4.2000  0 )
layerSetPlanarity T ME1_C_diel "C"
layerSetHeight T ME1_C_diel "" 0.565
layerSetSWTHK T ME1_C_diel 0.085
layerSetSWSLOPE T ME1_C_diel 90.0

techAddLayer T ( buildLayer          ME1_C_diel2  0.6150    D   3.5000  0 )
layerSetPlanarity T ME1_C_diel2 "C"
layerSetHeight T ME1_C_diel2 "" 1.095
layerSetSWTHK T ME1_C_diel2 0.615
layerSetSWSLOPE T ME1_C_diel2 90.0

techAddLayer T ( buildLayer          ME1_C_diel3  0.5800    D   4.1000  0 )

techAddLayer T ( buildLayer                ME2_C  0.5800    C   0.0000  0 )
L = (techFindLayer T ME2_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.298 0.447 0.596 1.192)
} else {
   @L.widths = '(0.298)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T ME2_C spacings 0.262 0.2 0.862
   layerAddDimensions T ME2_C spacings 0.862 0.138 1
   layerAddDimensions T ME2_C spacings 1 1 5
} else {
   @L.spacings = '(0.262)
}
@L.bias = 0.0180

techAddLayer T ( buildLayer                 VIA2  0.8000    V   0.0000  0 )
L = (techFindLayer T VIA2)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.0000)
@L.measured_from = "ME2_C"
@L.measured_to = "ME3_C"

techAddLayer T ( buildLayer           ME2_C_diel  0.0850    D   4.2000  0 )
layerSetPlanarity T ME2_C_diel "C"
layerSetHeight T ME2_C_diel "" 0.665
layerSetSWTHK T ME2_C_diel 0.085
layerSetSWSLOPE T ME2_C_diel 90.0

techAddLayer T ( buildLayer          ME2_C_diel2  0.6150    D   3.5000  0 )
layerSetPlanarity T ME2_C_diel2 "C"
layerSetHeight T ME2_C_diel2 "" 1.195
layerSetSWTHK T ME2_C_diel2 0.615
layerSetSWSLOPE T ME2_C_diel2 90.0

techAddLayer T ( buildLayer          ME2_C_diel3  0.6800    D   4.1000  0 )

techAddLayer T ( buildLayer                ME3_C  0.5800    C   0.0000  0 )
L = (techFindLayer T ME3_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.298 0.447 0.596 1.192)
} else {
   @L.widths = '(0.298)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T ME3_C spacings 0.262 0.2 0.862
   layerAddDimensions T ME3_C spacings 0.862 0.138 1
   layerAddDimensions T ME3_C spacings 1 1 5
} else {
   @L.spacings = '(0.262)
}
@L.bias = 0.0180

techAddLayer T ( buildLayer                 VIA3  0.8000    V   0.0000  0 )
L = (techFindLayer T VIA3)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.0000)
@L.measured_from = "ME3_C"
@L.measured_to = "ME4_C"

techAddLayer T ( buildLayer           ME3_C_diel  0.0850    D   4.2000  0 )
layerSetPlanarity T ME3_C_diel "C"
layerSetHeight T ME3_C_diel "" 0.665
layerSetSWTHK T ME3_C_diel 0.085
layerSetSWSLOPE T ME3_C_diel 90.0

techAddLayer T ( buildLayer          ME3_C_diel2  0.6150    D   3.5000  0 )
layerSetPlanarity T ME3_C_diel2 "C"
layerSetHeight T ME3_C_diel2 "" 1.195
layerSetSWTHK T ME3_C_diel2 0.615
layerSetSWSLOPE T ME3_C_diel2 90.0

techAddLayer T ( buildLayer          ME3_C_diel3  0.6800    D   4.1000  0 )

techAddLayer T ( buildLayer                ME4_C  0.5800    C   0.0000  0 )
L = (techFindLayer T ME4_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.298 0.447 0.596 1.192)
} else {
   @L.widths = '(0.298)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T ME4_C spacings 0.262 0.2 0.862
   layerAddDimensions T ME4_C spacings 0.862 0.138 1
   layerAddDimensions T ME4_C spacings 1 1 5
} else {
   @L.spacings = '(0.262)
}
@L.bias = 0.0180

techAddLayer T ( buildLayer                 VIA4  0.8000    V   0.0000  0 )
L = (techFindLayer T VIA4)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.0000)
@L.measured_from = "ME4_C"
@L.measured_to = "SEC_LAST_MET_C"

techAddLayer T ( buildLayer           ME4_C_diel  0.0850    D   4.2000  0 )
layerSetPlanarity T ME4_C_diel "C"
layerSetHeight T ME4_C_diel "" 0.665
layerSetSWTHK T ME4_C_diel 0.085
layerSetSWSLOPE T ME4_C_diel 90.0

techAddLayer T ( buildLayer          ME4_C_diel2  0.6150    D   3.5000  0 )
layerSetPlanarity T ME4_C_diel2 "C"
layerSetHeight T ME4_C_diel2 "" 1.195
layerSetSWTHK T ME4_C_diel2 0.615
layerSetSWSLOPE T ME4_C_diel2 90.0

techAddLayer T ( buildLayer          ME4_C_diel3  0.6800    D   4.1000  0 )

techAddLayer T ( buildLayer       SEC_LAST_MET_C  0.5800    C   0.0000  0 )
L = (techFindLayer T SEC_LAST_MET_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.298 0.447 0.596 1.192)
} else {
   @L.widths = '(0.28)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T SEC_LAST_MET_C spacings 0.262 0.2 0.862
   layerAddDimensions T SEC_LAST_MET_C spacings 0.862 0.138 1
   layerAddDimensions T SEC_LAST_MET_C spacings 1 1 5
} else {
   @L.spacings = '(0.28)
}
@L.bias = 0.0180

techAddLayer T ( buildLayer                 VIA5  0.8000    V   0.0000  0 )
L = (techFindLayer T VIA5)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.0000)
@L.measured_from = "SEC_LAST_MET_C"
@L.measured_to = "TOP_M_C"

techAddLayer T ( buildLayer  SEC_LAST_MET_C_diel  0.0850    D   4.2000  0 )
layerSetPlanarity T SEC_LAST_MET_C_diel "C"
layerSetHeight T SEC_LAST_MET_C_diel "" 0.615
layerSetSWTHK T SEC_LAST_MET_C_diel 0.085
layerSetSWSLOPE T SEC_LAST_MET_C_diel 90.0

techAddLayer T ( buildLayer SEC_LAST_MET_C_diel2  0.5300    D   3.5000  0 )

techAddLayer T ( buildLayer                MMC_C  0.1150    C   0.0000  0 )
L = (techFindLayer T MMC_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.599 0.8985 1.198 2.396)
} else {
   @L.widths = '(0.599)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T MMC_C spacings 0.551 0.2 0.951
   layerAddDimensions T MMC_C spacings 0.951 0.2 1.051
   layerAddDimensions T MMC_C spacings 1.051 1 4.051
} else {
   @L.spacings = '(0.551)
}
@L.bias = -0.0010

techAddLayer T ( buildLayer               MMCVIA  0.6500    V   0.0000  0 )
L = (techFindLayer T MMCVIA)
@L.widths = '(0.2800)
@L.lengths = '(0.2800)
@L.spacings = '(0.2800)
@L.enclosures = '(0.5000)
@L.measured_from = "MMC_C"
@L.measured_to = "TOP_M_C"

techAddLayer T ( buildLayer           MMC_C_diel  0.0500    D   4.2000  0 )
layerSetPlanarity T MMC_C_diel "C"
layerSetHeight T MMC_C_diel "" 0.2
layerSetSWTHK T MMC_C_diel 0.085
layerSetSWSLOPE T MMC_C_diel 90.0

techAddLayer T ( buildLayer          MMC_C_diel2  0.0350    D   3.5000  0 )
layerSetPlanarity T MMC_C_diel2 "C"
layerSetHeight T MMC_C_diel2 "" 0.715
layerSetSWTHK T MMC_C_diel2 0.615
layerSetSWSLOPE T MMC_C_diel2 90.0

techAddLayer T ( buildLayer          MMC_C_diel3  0.6800    D   4.1000  0 )

techAddLayer T ( buildLayer              TOP_M_C  2.0600    C   0.0000  0 )
L = (techFindLayer T TOP_M_C)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(1.17 1.755 2.34 4.68)
} else {
   @L.widths = '(0.44)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T TOP_M_C spacings 1.03 0.2 1.43
   layerAddDimensions T TOP_M_C spacings 1.43 0.2 1.53
   layerAddDimensions T TOP_M_C spacings 1.53 1 4.53
} else {
   @L.spacings = '(0.44)
}
@L.bias = -0.0300

techAddLayer T ( buildLayer         TOP_M_C_diel  1.5000    D   4.1000  0 )
layerSetPlanarity T TOP_M_C_diel "C"
layerSetHeight T TOP_M_C_diel "" 2.36
layerSetSWTHK T TOP_M_C_diel 1.5
layerSetSWSLOPE T TOP_M_C_diel 90.0

techAddLayer T ( buildLayer        TOP_M_C_diel2  0.7000    D   7.5000  0 )
layerSetPlanarity T TOP_M_C_diel2 "C"
layerSetHeight T TOP_M_C_diel2 "" 1.56
layerSetSWTHK T TOP_M_C_diel2 0.7
layerSetSWSLOPE T TOP_M_C_diel2 90.0

techAddLayer T ( buildLayer          active_base  1.0000    B   0.0000  0 )

techAddLayer T ( buildLayer     active_base_diel  0.0500    D   7.5000  0 )

techAddLayer T ( buildLayer    active_base_diel2  1.0000    D   4.1000  0 )

techAddLayer T ( buildLayer          sdcont_base  1.0000    B   0.0000  0 )

techAddLayer T ( buildLayer     sdcont_base_diel  0.1467    D   4.1000  0 )

techAddLayer T ( buildLayer                 diff  0.2500    C   0.0000  0 )
L = (techFindLayer T diff)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.24 0.36 0.48 0.96)
} else {
   @L.widths = '(0.24)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T diff spacings 0.28 0.2 1.0
   layerAddDimensions T diff spacings 1.0 1.0 5.0
} else {
   @L.spacings = '(0.28)
}

techAddLayer T ( buildLayer               diffco  1.0533    V   0.0000  0 )
L = (techFindLayer T diffco)
@L.widths = '(0.2400)
@L.lengths = '(0.2400)
@L.spacings = '(0.2600)
@L.enclosures = '(0.1000)
@L.measured_from = "diff"
@L.measured_to = "ME1_C"
@L.min_cond_spacing = 0.1500

techAddLayer T ( buildLayer            diff_diel  0.0033    D   4.1000  0 )

techAddLayer T ( buildLayer         diffcap_base  0.0000    B   0.0000  0 )

techAddLayer T ( buildLayer    diffcap_base_diel  0.3967    D   4.1000  0 )

techAddLayer T ( buildLayer                diff2  0.2500    C   0.0000  0 )
L = (techFindLayer T diff2)
if ((techGetMode T) == "calibrate") {
   @L.widths = '(0.24 0.36 0.48 0.96)
} else {
   @L.widths = '(0.24)
}
if ((techGetMode T) == "calibrate") {
   @L.lengths = '(1.0)
} else {
   @L.lengths = '(100.00)
}
if ((techGetMode T) == "calibrate") {
   layerSetDimensions T diff2 spacings 0.28 0.2 1.0
   layerAddDimensions T diff2 spacings 1.0 1.0 5.0
} else {
   @L.spacings = '(0.28)
}

techAddLayer T ( buildLayer           diff2_diel  0.0000    D   12.0000  0 )
layerSetPlanarity T diff2_diel "C"
layerSetHeight T diff2_diel "" -0.4
layerSetSWTHK T diff2_diel 0.0

techAddLayer T ( buildLayer          diff2_diel2  0.0033    D   4.1000  0 )

techSetLayerProfile T ME1_C field
techSetLayerProfile T ME1_C_diel field
techSetLayerProfile T ME1_C_diel2 field
techSetLayerProfile T ME1_C_diel3 field
techSetLayerProfile T ME2_C field
techSetLayerProfile T ME2_C_diel field
techSetLayerProfile T ME2_C_diel2 field
techSetLayerProfile T ME2_C_diel3 field
techSetLayerProfile T ME3_C field
techSetLayerProfile T ME3_C_diel field
techSetLayerProfile T ME3_C_diel2 field
techSetLayerProfile T ME3_C_diel3 field
techSetLayerProfile T ME4_C field
techSetLayerProfile T ME4_C_diel field
techSetLayerProfile T ME4_C_diel2 field
techSetLayerProfile T ME4_C_diel3 field
techSetLayerProfile T SEC_LAST_MET_C field
techSetLayerProfile T SEC_LAST_MET_C_diel field
techSetLayerProfile T SEC_LAST_MET_C_diel2 field
techSetLayerProfile T MMC_C field
techSetLayerProfile T MMC_C_diel field
techSetLayerProfile T MMC_C_diel2 field
techSetLayerProfile T MMC_C_diel3 field
techSetLayerProfile T TOP_M_C field
techSetLayerProfile T TOP_M_C_diel field
techSetLayerProfile T TOP_M_C_diel2 field
techSetLayerProfile T PLY_C field
techSetLayerProfile T PLY_C_diel field
techSetLayerProfile T PLY_C_diel2 field
techSetLayerProfile T PLY_C_diel3 field
techSetLayerProfile T PLY_C_diel4 field

techAddProfile T (buildProfile field field_base \
   '( field_base_diel PLY_C CONT PLY_C_diel PLY_C_diel2 PLY_C_diel3 PLY_C_diel4 ME1_C VIA1 ME1_C_diel ME1_C_diel2 ME1_C_diel3 ME2_C VIA2 ME2_C_diel ME2_C_diel2 ME2_C_diel3 ME3_C VIA3 ME3_C_diel ME3_C_diel2 ME3_C_diel3 ME4_C VIA4 ME4_C_diel ME4_C_diel2 ME4_C_diel3 SEC_LAST_MET_C VIA5 SEC_LAST_MET_C_diel SEC_LAST_MET_C_diel2 MMC_C MMCVIA MMC_C_diel MMC_C_diel2 MMC_C_diel3 TOP_M_C TOP_M_C_diel TOP_M_C_diel2 ) \
   '( ) \
   '( ) \
   '( ) \
 )

techAddProfile T (buildProfile active active_base \
   '( active_base_diel active_base_diel2 ME1_C ME1_C_diel ME1_C_diel2 ME1_C_diel3 ME2_C ME2_C_diel ME2_C_diel2 ME2_C_diel3 ME3_C ME3_C_diel ME3_C_diel2 ME3_C_diel3 ME4_C ME4_C_diel ME4_C_diel2 ME4_C_diel3 SEC_LAST_MET_C SEC_LAST_MET_C_diel SEC_LAST_MET_C_diel2 MMC_C MMC_C_diel MMC_C_diel2 MMC_C_diel3 TOP_M_C TOP_M_C_diel TOP_M_C_diel2 ) \
   '( ) \
   '( ) \
   '( NSD_C PSD_C ) \
 )

techAddProfile T (buildProfile sdcont sdcont_base \
   '( sdcont_base_diel diff diffco diff_diel PLY_C PLY_C_diel PLY_C_diel2 PLY_C_diel3 PLY_C_diel4 ME1_C ME1_C_diel ME1_C_diel2 ME1_C_diel3 ME2_C ME2_C_diel ME2_C_diel2 ME2_C_diel3 ME3_C ME3_C_diel ME3_C_diel2 ME3_C_diel3 ME4_C ME4_C_diel ME4_C_diel2 ME4_C_diel3 SEC_LAST_MET_C SEC_LAST_MET_C_diel SEC_LAST_MET_C_diel2 MMC_C MMC_C_diel MMC_C_diel2 MMC_C_diel3 TOP_M_C TOP_M_C_diel TOP_M_C_diel2 ) \
   '( ) \
   '( diff ) \
   '( NSD_C PSD_C ) \
 )

techAddProfile T (buildProfile diffcap diffcap_base \
   '( diffcap_base_diel diff2 diff2_diel diff2_diel2 PLY_C PLY_C_diel PLY_C_diel2 PLY_C_diel3 PLY_C_diel4 ME1_C ME1_C_diel ME1_C_diel2 ME1_C_diel3 ME2_C ME2_C_diel ME2_C_diel2 ME2_C_diel3 ME3_C ME3_C_diel ME3_C_diel2 ME3_C_diel3 ME4_C ME4_C_diel ME4_C_diel2 ME4_C_diel3 SEC_LAST_MET_C SEC_LAST_MET_C_diel SEC_LAST_MET_C_diel2 MMC_C MMC_C_diel MMC_C_diel2 MMC_C_diel3 TOP_M_C TOP_M_C_diel TOP_M_C_diel2 ) \
   '( ) \
   '( diff2 ) \
   '( NSD_C PSD_C ) \
 )

