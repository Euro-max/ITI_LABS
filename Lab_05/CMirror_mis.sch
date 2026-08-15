v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -480 -390 -480 -370 {lab=#net1}
N -480 -390 -410 -390 {lab=#net1}
N -410 -390 -410 -340 {lab=#net1}
N -440 -340 -410 -340 {lab=#net1}
N -480 -460 -480 -450 {lab=VDD}
N -440 -510 -440 -500 {lab=0}
N -260 -430 -260 -370 {lab=Vout}
N -260 -310 -260 -300 {lab=0}
N -480 -310 -480 -290 {lab=0}
N -260 -300 -260 -280 {lab=0}
N -260 -340 -220 -340 {lab=0}
N -220 -340 -220 -300 {lab=0}
N -260 -300 -220 -300 {lab=0}
N -60 -400 -60 -380 {lab=#net2}
N -20 -350 10 -350 {lab=#net3}
N 170 -440 170 -380 {lab=#net4}
N 170 -320 170 -310 {lab=0}
N -60 -320 -60 -300 {lab=0}
N -100 -350 -60 -350 {lab=0}
N -100 -310 -60 -310 {lab=0}
N 170 -310 170 -290 {lab=0}
N 170 -350 210 -350 {lab=0}
N 210 -350 210 -310 {lab=0}
N 170 -310 210 -310 {lab=0}
N -60 -460 -60 -400 {lab=#net2}
N -60 -690 -60 -680 {lab=VDD}
N -60 -540 -60 -520 {lab=#net3}
N -60 -620 -60 -600 {lab=#net5}
N -100 -350 -100 -310 {lab=0}
N -110 -490 -60 -490 {lab=0}
N -100 -490 -100 -350 {lab=0}
N 170 -460 170 -440 {lab=#net4}
N 170 -490 200 -490 {lab=0}
N 200 -490 200 -350 {lab=0}
N -60 -610 20 -610 {lab=#net5}
N 170 -600 170 -520 {lab=Vout}
N -60 -530 0 -530 {lab=#net3}
N 0 -530 0 -350 {lab=#net3}
N -410 -340 -390 -340 {lab=#net1}
N -440 -500 -440 -490 {lab=0}
N -20 -490 20 -490 {lab=#net5}
N 120 -350 130 -350 {lab=#net6}
N -260 -570 -260 -540 {lab=Vout}
N -330 -340 -300 -340 {lab=#net7}
N 20 -610 20 -490 {lab=#net5}
N 120 -490 130 -490 {lab=#net8}
N 10 -350 20 -350 {lab=#net3}
N 100 -490 120 -490 {lab=#net8}
N 20 -490 40 -490 {lab=#net5}
N 20 -350 60 -350 {lab=#net3}
N -360 -590 -360 -550 {lab=VMIS}
N -500 -340 -480 -340 {lab=0}
N -500 -340 -500 -300 {lab=0}
N -500 -300 -480 -300 {lab=0}
C {devices/code_shown.sym} -220 -150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {isource.sym} -480 -420 0 0 {name=I0 value=10u}
C {symbols/nfet_03v3.sym} -460 -340 0 1 {name=M1
L=1.42u
W=14.6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -280 -340 0 0 {name=M2
L=1.42u
W=29.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vdd.sym} -480 -460 0 0 {name=l1 lab=VDD}
C {vsource.sym} -440 -540 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -440 -570 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} -260 -400 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {symbols/nfet_03v3.sym} -40 -350 0 1 {name=M3
L=1.42u
W=14.6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 150 -350 0 0 {name=M4
L=1.42u
W=29.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -40 -490 0 1 {name=M5
L=1.42u
W=14.6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {isource.sym} -60 -650 0 0 {name=I1 value=10u}
C {vdd.sym} -60 -690 0 0 {name=l8 lab=VDD}
C {res.sym} -60 -570 0 0 {name=R1
value=23.532k
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 150 -490 0 0 {name=M6
L=1.42u
W=29.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 170 -560 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {asrc.sym} -360 -340 1 0 {name=B1 function="v=v(VMIS)"}
C {vsource.sym} -360 -520 0 0 {name=VMIS_SW value="0" savecurrent=false}
C {gnd.sym} -360 -490 0 0 {name=l9 lab=0}
C {vsource.sym} -260 -510 0 0 {name=VOUT_SW value=0.9 savecurrent=false}
C {gnd.sym} -260 -480 0 0 {name=l10 lab=0}
C {lab_pin.sym} -260 -570 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {gnd.sym} -440 -490 0 0 {name=l3 lab=0}
C {gnd.sym} -480 -290 0 0 {name=l4 lab=0}
C {gnd.sym} -260 -280 0 0 {name=l5 lab=0}
C {gnd.sym} -60 -300 0 0 {name=l6 lab=0}
C {gnd.sym} 170 -290 0 0 {name=l7 lab=0}
C {asrc.sym} 90 -350 1 0 {name=B2 function="v=v(VMIS)"}
C {asrc.sym} 70 -490 1 0 {name="VMIS_SW2" function=""}
C {lab_pin.sym} -360 -590 2 0 {name=p3 sig_type=std_logic lab=VMIS}
C {code.sym} 500 -510 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let x = 1
set num = \{$&x\}
dowhile x <= 6
save @m.xm\{$num\}.m0[id]
save @m.xm\{$num\}.m0[vgs]
save @m.xm\{$num\}.m0[vds]
save @m.xm\{$num\}.m0[vdsat]
save @m.xm\{$num\}.m0[vth]
save @m.xm\{$num\}.m0[gm]
save @m.xm\{$num\}.m0[gds]
save @m.xm\{$num\}.m0[gmbs]
save @m.xm\{$num\}.m0[cgg]
save @m.xm\{$num\}.m0[cdd]
save @m.xm\{$num\}.m0[css]
let x = x + 1
set num = \{$&x\}
end
save all
* tighten the tolerances to improve the accuracy
*option reltol=1e-5 vntol=1e-6 abstol=1e-12
dc VMIS_SW 0 1.7m 0.1m
echo \\"Simple Current Mirror Simulation Results\\"
meas dc i1 min @m.xm2.m0[id]
meas dc i2 max @m.xm2.m0[id]
let perc_change = (i2 - i1) / ((i2 + i1)/2) * 100
print perc_change
echo \\"Wide Swing Current Mirror Simulation Results\\"
meas dc i1 min @m.xm4.m0[id]
meas dc i2 max @m.xm4.m0[id]
let perc_change = (i2 - i1) / ((i2 + i1)/2) * 100
print perc_change
write cmirror_dc.raw
dc VMIS_SW2 0 1.7m 0.1m
echo \\"Wide Swing Current Mirror Simulation Results (Cascode
Mismatch)\\"
meas dc i1 min @m.xm4.m0[id]
meas dc i2 max @m.xm4.m0[id]
let perc_change = (i2 - i1) / ((i2 + i1)/2) * 100
print perc_change
set appendwrite
write cmirror_dc.raw
.endc"}
