/*  Technology-file For Milkyway/Apollo             */
/*                                                  */
/*  process 011um                                   */
/*                                                  */
/*  2019-10-23 created  by Eric                     */
/****************************************************/

Technology	{
		name				= "Max011_1P5M"
		date				= "2019-10-23"
		dielectric			= 4.1e-05
		unitTimeName			= "ns"
		timePrecision			= 1000000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 1
		unitVoltageName			= "V"
		voltagePrecision		= 1000
		unitCurrentName			= "mA"
		currentPrecision		= 1000
		unitPowerName			= "mw"
		powerPrecision			= 1000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 0
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 125
}

Tile		"unit" {
		width				= 0.48
		height				= 3.36
}

Layer		"3P" {
		layerNumber			= 15
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"3N" {
		layerNumber			= 16
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"2P" {
		layerNumber			= 17
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"2N" {
		layerNumber			= 18
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "dot"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"1F_ACT" {
		layerNumber			= 31
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"1G_GATE" {
		layerNumber			= 33
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"1C_CON" {
		layerNumber			= 35
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"1M_MET" {
		layerNumber			= 36
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "slash"
                pitch                           = 0.48
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.15
		fatTblDimension			= 2
		fatTblThreshold			= (0,0.4)
		fatTblSpacing			= (0.15,0.18,
						   0.18,0.18)
		unitMinResistance		= 0.00013
		unitNomResistance		= 0.00026
		unitMaxResistance		= 0.00039
		unitMinCapacitance		= 4.7e-05
		unitNomCapacitance		= 4.7e-05
		unitMaxCapacitance		= 4.7e-05
		unitMinSideWallCap		= 1.6e-04
		unitNomSideWallCap		= 1.6e-04
		unitMaxSideWallCap		= 1.6e-04
		unitMinThickness		= 0.207
		unitNomThickness		= 0.230
		unitMaxThickness		= 0.253
		minArea				= 0.144

}

Layer		"1T_V1" {
		layerNumber			= 55
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.37
		defaultWidth			= 0.17
		minWidth			= 0.2
		minSpacing			= 0.2
}

Layer		"2M_MET" {
		layerNumber			= 32
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.48
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.24
		fatTblDimension			= 3
		fatTblThreshold			= (0,1,10)
		fatTblSpacing			= (0.24,0.3,0.56,
						   0.3,0.3,0.56,
						   0.56,0.56,0.56)
		unitMinResistance		= 0.00010
		unitNomResistance		= 0.00019
		unitMaxResistance		= 0.00028
		unitMinCapacitance		= 2.4e-05
		unitNomCapacitance		= 2.4e-05
		unitMaxCapacitance		= 2.4e-05
		unitMinSideWallCap		= 2.0e-04
		unitNomSideWallCap		= 2.0e-04
		unitMaxSideWallCap		= 2.0e-04
		unitMinThickness		= 0.252
		unitNomThickness		= 0.280
		unitMaxThickness		= 0.308
		minArea				= 0.144
}

Layer		"2T_V2" {
		layerNumber			= 56
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.37
		defaultWidth			= 0.17
		minWidth			= 0.2
		minSpacing			= 0.2
}

Layer		"3M_MET" {
		layerNumber			= 58
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.48
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.24
		fatTblDimension			= 3
		fatTblThreshold			= (0,1,10)
		fatTblSpacing			= (0.24,0.3,0.56,
						   0.3,0.3,0.56,
						   0.56,0.56,0.56)
		unitMinResistance		= 0.00010
		unitNomResistance		= 0.00019
		unitMaxResistance		= 0.00028
		unitMinCapacitance		= 1.5e-06
		unitNomCapacitance		= 1.5e-06
		unitMaxCapacitance		= 1.5e-06
		unitMinSideWallCap		= 2.0e-04
		unitNomSideWallCap		= 2.0e-04
		unitMaxSideWallCap		= 2.0e-04
		unitMinThickness		= 0.252
		unitNomThickness		= 0.280
		unitMaxThickness		= 0.308
		minArea				= 0.144
}

Layer		"3T_V3" {
		layerNumber			= 57
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.37
		defaultWidth			= 0.17
		minWidth			= 0.2
		minSpacing			= 0.2
}

Layer		"4M_MET" {
		layerNumber			= 59
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.48
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.24
		fatTblDimension			= 3
		fatTblThreshold			= (0,1,10)
		fatTblSpacing			= (0.24,0.3,0.56,
						   0.3,0.3,0.56,
						   0.56,0.56,0.56)
		unitMinResistance		= 0.00010
		unitNomResistance		= 0.00019
		unitMaxResistance		= 0.00028
		unitMinCapacitance		= 1.1e-06
		unitNomCapacitance		= 1.1e-06
		unitMaxCapacitance		= 1.1e-06
		unitMinSideWallCap		= 2.0e-04
		unitNomSideWallCap		= 2.0e-04
		unitMaxSideWallCap		= 2.0e-04
		unitMinThickness		= 0.252
		unitNomThickness		= 0.280
		unitMaxThickness		= 0.308
		minArea				= 0.144
}

Layer		"TT_V4" {
		layerNumber			= 124
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.37
		defaultWidth			= 0.17
		minWidth			= 0.2
		minSpacing			= 0.2
}

Layer		"TM_MET" {
		layerNumber			= 115
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "lead"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.75
		defaultWidth			= 0.36
		minWidth			= 0.36
		minSpacing			= 0.39
		fatTblDimension			= 2
		fatTblThreshold			= (0,10)
		fatTblSpacing			= (0.39,0.6,
						   0.6,0.6)		
		unitMinResistance		= 0.00001
		unitNomResistance		= 0.00004
		unitMaxResistance		= 0.00010
		unitMinCapacitance		= 9.2e-06
		unitNomCapacitance		= 9.2e-06
		unitMaxCapacitance		= 9.2e-06
		unitMinSideWallCap		= 3.6e-04
		unitNomSideWallCap		= 3.6e-04
		unitMaxSideWallCap		= 3.6e-04
		unitMinThickness		= 0.778
		unitNomThickness		= 0.865
		unitMaxThickness		= 0.951
		minArea				= 0.562
}

Layer		"1MText" {
		layerNumber			= 211
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"2MText" {
		layerNumber			= 212
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"3MText" {
		layerNumber			= 213
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"4MText" {
		layerNumber			= 214
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"5MText" {
		layerNumber			= 215
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "lead"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"V12A" {
		contactCodeNumber		= 1
		cutLayer			= "1T_V1"
		lowerLayer			= "1M_MET"
		upperLayer			= "2M_MET"
                isDefaultContact		= 1
		cutWidth			= 0.17
		cutHeight			= 0.17
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.2
		unitMinResistance		= 0.0065
		unitNomResistance		= 0.0095
		unitMaxResistance		= 0.0125
}

ContactCode	"V23A" {
		contactCodeNumber		= 2
		cutLayer			= "2T_V2"
		lowerLayer			= "2M_MET"
		upperLayer			= "3M_MET"
                isDefaultContact		= 1
		cutWidth			= 0.17
		cutHeight			= 0.17
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.2
		unitMinResistance		= 0.0065
		unitNomResistance		= 0.0095
		unitMaxResistance		= 0.0125
}

ContactCode	"V34A" {
		contactCodeNumber		= 3
		cutLayer			= "3T_V3"
		lowerLayer			= "3M_MET"
		upperLayer			= "4M_MET"
                isDefaultContact		= 1
		cutWidth			= 0.17
		cutHeight			= 0.17
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.2
		unitMinResistance		= 0.0065
		unitNomResistance		= 0.0095
		unitMaxResistance		= 0.0125
}

ContactCode	"V45A" {
		contactCodeNumber		= 4
		cutLayer			= "TT_V4"
		lowerLayer			= "4M_MET"
		upperLayer			= "TM_MET"
                isDefaultContact		= 1
		cutWidth			= 0.22
		cutHeight			= 0.22
		upperLayerEncWidth		= 0.1
		upperLayerEncHeight		= 0.1
		lowerLayerEncWidth		= 0.1
		lowerLayerEncHeight		= 0.1
		minCutSpacing			= 0.22
		unitMinResistance		= 0.0009
		unitNomResistance		= 0.0036
		unitMaxResistance		= 0.0064
}



