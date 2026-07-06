set lib [current_mw_lib]
remove_antenna_rules $lib

define_antenna_rule $lib -mode 2 -diode_mode 2 -metal_ratio 400 -cut_ratio 0
define_antenna_layer_rule $lib -mode 2 -layer "1M_MET" -ratio 400 -diode_ratio {0.2 0 400.00 2200}
define_antenna_layer_rule $lib -mode 2 -layer "2M_MET" -ratio 400 -diode_ratio {0.2 0 400.00 2200}
define_antenna_layer_rule $lib -mode 2 -layer "3M_MET" -ratio 400 -diode_ratio {0.2 0 400.00 1200}
define_antenna_layer_rule $lib -mode 2 -layer "4M_MET" -ratio 400 -diode_ratio {0.2 0 400.00 1200}
define_antenna_layer_rule $lib -mode 2 -layer "TM_MET" -ratio 400 -diode_ratio {0.2 0 8000.00 10000}
define_antenna_layer_rule $lib -mode 2 -layer "1T_V1"  -ratio 20 -diode_ratio {0.2 0  200.00  1000}
define_antenna_layer_rule $lib -mode 2 -layer "2T_V2"  -ratio 20 -diode_ratio {0.2 0  200.00  1000}
define_antenna_layer_rule $lib -mode 2 -layer "3T_V3"  -ratio 20 -diode_ratio {0.2 0  200.00  1000}
define_antenna_layer_rule $lib -mode 2 -layer "TT_V4"  -ratio 20 -diode_ratio {0.2 0  200.00  1000}
