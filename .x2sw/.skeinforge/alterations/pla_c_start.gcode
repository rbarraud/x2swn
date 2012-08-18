;(This file is for a My Prusa w/ Bowden mount, PLA multicolor printing)
;(**** begin initilization commands ****)
T0  ;(select the base extruder)
G21 ;(set units to mm)
G90 ;(set positioning to absolute)
G28 ;(home all axis)
G1 Z0.2 F300 ;(adjustment for the warping of the bed)
G92 Z0 ;(set the z level of homing)
G1 Z10 X1 Y10 F1500 ;(move up and sideways to allow extruder change moves)

; Start the fan
M106 S255 ;(at full speed to spin off)
G4 P2000  ;(wait for start)
M106 S100  ;(set work speed)

; position the head for preparations
M140 S75 ;(set bed temperature)
M104 T0 S175 ;(set extruder 0 temperature)
M104 T1 S175 ;(set extruder 1 temperature)
M190 ;(wait for bed)

; prepare plastic to flow through the extruder 1
T1 ;(select the color extruder)
M109 ;(wait for extruder 1)
G92 E0 ;(reset extruder to 0)
G1 F100 ;(set feed rate to 30mm/min)
G1 E12 ;(feed some plastic)
G1 E6 F3200 ;(retract to prevent oozing MUST MATCH THE RETRACT SETTING)
G92 E0 ;(reset extruder to 0)
G1 E-9 F1200 ;(retract more since we are going to wait)

; prepare plastic to flow throug the extruder 0
T0 ;(switch to the base extruder)
M109 ;(wait for extruder 0)
G92 E0 ;(reset extruder to 0)
G1 E12 F100 ;(feed some plastic)
G1 E6 F3200 ;(retract to prevent oozing MUST MATCH THE RETRACT SETTING)
G92 E0 ;(reset extruder to 0)
G1 E-9 F1200 ;(retract more since we are going to wait)

; Give me 10sec some to clean up the plastic
G4 P10000 