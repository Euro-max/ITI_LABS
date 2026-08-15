v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1000 -490 1800 -90 {flags=graph
y1=3.5
y2=8.2
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-0.016162508
x2=1.8948672
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="rout1

rout2"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=1
}
B 2 1020 -60 1820 340 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.016162509
x2=1.8948672
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="error1

error2"
color="6 8"
dataset=-1
unitx=1
logx=0
logy=0
y1=-2
y2=2}
B 2 1870 -500 2670 -100 {flags=graph
y1=1.927517e-05
y2=2.0142706e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.016162508
x2=1.8948672
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="i(@m.xm2.m0[id])

i(@m.xm4.m0[id])"
color="8 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N 20 -180 20 -160 {lab=#net1}
N 20 -180 90 -180 {lab=#net1}
N 90 -180 90 -130 {lab=#net1}
N 60 -130 90 -130 {lab=#net1}
N 20 -250 20 -240 {lab=VDD}
N 60 -300 60 -290 {lab=0}
N 240 -220 240 -160 {lab=Vout}
N 240 -100 240 -90 {lab=0}
N 20 -100 20 -80 {lab=0}
N 240 -90 240 -70 {lab=0}
N 240 -130 280 -130 {lab=0}
N 280 -130 280 -90 {lab=0}
N 240 -90 280 -90 {lab=0}
N 440 -190 440 -170 {lab=#net2}
N 480 -140 510 -140 {lab=#net3}
N 670 -230 670 -170 {lab=#net4}
N 670 -110 670 -100 {lab=0}
N 440 -110 440 -90 {lab=0}
N 400 -140 440 -140 {lab=0}
N 400 -100 440 -100 {lab=0}
N 670 -100 670 -80 {lab=0}
N 670 -140 710 -140 {lab=0}
N 710 -140 710 -100 {lab=0}
N 670 -100 710 -100 {lab=0}
N 440 -250 440 -190 {lab=#net2}
N 440 -480 440 -470 {lab=VDD}
N 440 -330 440 -310 {lab=#net3}
N 440 -410 440 -390 {lab=#net5}
N 400 -140 400 -100 {lab=0}
N 390 -280 440 -280 {lab=0}
N 400 -280 400 -140 {lab=0}
N 670 -250 670 -230 {lab=#net4}
N 670 -280 700 -280 {lab=0}
N 700 -280 700 -140 {lab=0}
N 440 -400 520 -400 {lab=#net5}
N 670 -390 670 -310 {lab=Vout}
N 440 -320 500 -320 {lab=#net3}
N 500 -320 500 -140 {lab=#net3}
N 90 -130 110 -130 {lab=#net1}
N 60 -290 60 -280 {lab=0}
N 480 -280 520 -280 {lab=#net5}
N 620 -140 630 -140 {lab=#net6}
N 240 -360 240 -330 {lab=Vout}
N 170 -130 200 -130 {lab=#net7}
N 520 -400 520 -280 {lab=#net5}
N 620 -280 630 -280 {lab=#net8}
N 510 -140 520 -140 {lab=#net3}
N 600 -280 620 -280 {lab=#net8}
N 520 -280 540 -280 {lab=#net5}
N 520 -140 560 -140 {lab=#net3}
N 140 -380 140 -340 {lab=VMIS}
N 0 -130 20 -130 {lab=0}
N 0 -130 0 -90 {lab=0}
N 0 -90 20 -90 {lab=0}
C {devices/code_shown.sym} 280 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {isource.sym} 20 -210 0 0 {name=I0 value=10u}
C {symbols/nfet_03v3.sym} 40 -130 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 220 -130 0 0 {name=M2
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
C {vdd.sym} 20 -250 0 0 {name=l1 lab=VDD}
C {vsource.sym} 60 -330 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 60 -360 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} 240 -190 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {symbols/nfet_03v3.sym} 460 -140 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 650 -140 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 460 -280 0 1 {name=M5
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
C {isource.sym} 440 -440 0 0 {name=I1 value=10u}
C {vdd.sym} 440 -480 0 0 {name=l8 lab=VDD}
C {res.sym} 440 -360 0 0 {name=R1
value=23.532k
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 650 -280 0 0 {name=M6
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
C {lab_pin.sym} 670 -350 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {asrc.sym} 140 -130 1 0 {name=B1 function="v=v(VMIS)"}
C {vsource.sym} 140 -310 0 0 {name=VMIS_SW value="0" savecurrent=false}
C {gnd.sym} 140 -280 0 0 {name=l9 lab=0}
C {vsource.sym} 240 -300 0 0 {name=VOUT_SW value=0.9 savecurrent=false}
C {gnd.sym} 240 -270 0 0 {name=l10 lab=0}
C {lab_pin.sym} 240 -360 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {code.sym} 840 -430 0 0 {name=s1 only_toplevel=false value=".control
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
op
write cmirror_op.raw
set appendwrite
dc R1 20k 50k 100
remzerovec
write cmirror_op.raw
.endc"
spice_ignore=true}
C {gnd.sym} 60 -280 0 0 {name=l3 lab=0}
C {gnd.sym} 20 -80 0 0 {name=l4 lab=0}
C {gnd.sym} 240 -70 0 0 {name=l5 lab=0}
C {gnd.sym} 440 -90 0 0 {name=l6 lab=0}
C {gnd.sym} 670 -80 0 0 {name=l7 lab=0}
C {asrc.sym} 590 -140 1 0 {name=B2 function="v=v(VMIS)"}
C {asrc.sym} 570 -280 1 0 {name=B3 function="v=v(VMIS)"}
C {lab_pin.sym} 140 -380 2 0 {name=p3 sig_type=std_logic lab=VMIS}
C {code.sym} 830 -250 0 0 {name=s2 only_toplevel=false value=".control
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
dc VOUT_SW 0 1.8 10m
echo \\"Simple Current Mirror Simulation Results\\"
meas dc i1 find @m.xm2.m0[id] when v(VOUT)=0.5V
meas dc i2 find @m.xm2.m0[id] when v(VOUT)=1.5V
let perc_change = (i2 - i1) / ((i2 + i1)/2) * 100
print perc_change
echo \\"Wide Swing Current Mirror Simulation Results\\"
meas dc i1 find @m.xm4.m0[id] when v(VOUT)=0.5V
meas dc i2 find @m.xm4.m0[id] when v(VOUT)=1.5V
let perc_change = (i2 - i1) / ((i2 + i1)/2) * 100

print perc_change
* Rout calculation
let Rout1 = 1/deriv(@m.xm2.m0[id])
let Rout2 = 1/deriv(@m.xm4.m0[id])
* Percent error calculation
let Error1 = (@m.xm2.m0[id] - 20u) / 20u * 100
let Error2 = (@m.xm4.m0[id] - 20u) / 20u * 100
write cmirror_dc.raw
.endc"}
