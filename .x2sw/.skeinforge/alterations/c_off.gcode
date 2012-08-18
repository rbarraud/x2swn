G91 ;(switch to relative positioning)
G1 E-14 F2000 ;(retract for long pause at feed rate 20mm/min)
G90 ;(Back to absolute positioning)
M104 L40 ; (lower the temperature of the color extruder)
T0 ;(switch back to base extruder)
G1 X40 Y40 F3000 ; (move to the parking spot)
M109 H40 W5 ; (re-heat the base extruder)
;(do not do anything since retract return will restore the filament position)