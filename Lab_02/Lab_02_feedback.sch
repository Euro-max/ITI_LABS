v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 830 -600 1630 -200 {flags=graph
y1=0.01
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="vout
vin"
hilight_wave=0}
B 2 810 -1030 1610 -630 {flags=graph
y1=-9.7
y2=0.00073
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=6
node="vout deriv()"}
B 2 1670 -800 2470 -400 {flags=graph
y1=0.0001
y2=0.00011
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=@m.xm1.m0[gm]
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 490 -220 490 -210 {lab=VDD}
N 490 -150 490 -140 {lab=0}
N 210 -150 210 -130 {lab=0}
N 210 -180 240 -180 {lab=0}
N 240 -180 240 -140 {lab=0}
N 210 -140 240 -140 {lab=0}
N 210 -220 210 -210 {lab=Vout}
N -10 -120 -10 -110 {lab=0}
N -10 -180 50 -180 {lab=Vsig}
N 120 -250 120 -180 {lab=Vin}
N 120 -180 170 -180 {lab=Vin}
N 210 -390 210 -360 {lab=VDD}
N 210 -330 270 -330 {lab=VDD}
N 270 -370 270 -330 {lab=VDD}
N 210 -370 270 -370 {lab=VDD}
N 210 -300 210 -220 {lab=Vout}
N 180 -250 210 -250 {lab=Vout}
N 50 -180 60 -180 {lab=Vsig}
N -120 -390 -120 -360 {lab=VDD}
N -120 -300 -120 -280 {lab=#net1}
N -80 -330 -80 -280 {lab=#net1}
N -120 -280 -80 -280 {lab=#net1}
N -80 -330 170 -330 {lab=#net1}
N -180 -330 -120 -330 {lab=VDD}
N -180 -380 -180 -330 {lab=VDD}
N -180 -380 -120 -380 {lab=VDD}
C {vsource.sym} 490 -180 0 0 {name=V1 value=2.5 savecurrent=false}
C {gnd.sym} 490 -140 0 0 {name=l1 lab=0}
C {vdd.sym} 490 -220 0 0 {name=l2 lab=VDD}
C {symbols/nfet_03v3.sym} 190 -180 0 0 {name=M1
L=2u
W=9.8039u
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
C {gnd.sym} 210 -130 0 0 {name=l3 lab=0}
C {vsource.sym} -10 -150 0 0 {name=V0 value="sin(0.8163 10m 1meg)" savecurrent=false}
C {gnd.sym} -10 -110 0 0 {name=l4 lab=0}
C {lab_pin.sym} 20 -180 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {res.sym} 90 -180 3 0 {name=R1
value=1meg
footprint=1206
device=resistor
m=1}
C {res.sym} 150 -250 3 0 {name=R2
value=10meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 140 -180 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {symbols/pfet_03v3.sym} 190 -330 0 0 {name=M2
L=2u
W=42.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vdd.sym} 210 -390 0 0 {name=l5 lab=VDD}
C {symbols/pfet_03v3.sym} -100 -330 0 1 {name=M3
L=2u
W=42.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vdd.sym} -120 -390 0 0 {name=l6 lab=VDD}
C {isource.sym} -120 -250 0 0 {name=I0 value=10u}
C {gnd.sym} -120 -220 0 0 {name=l7 lab=0}
C {lab_pin.sym} 210 -270 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {code_shown.sym} 420 -590 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.m0[id]
save @m.xm1.m0[gm]
save @m.xm1.m0[gds]
save @m.xm1.m0[vgs]
save @m.xm1.m0[vds]
save @m.xm2.m0[id]
save @m.xm2.m0[gm]
save @m.xm2.m0[gds]
save @m.xm2.m0[vgs]
save @m.xm2.m0[vds]
*op
*ac dec 10 1 10g
tran 0.1u 2u
*dc V0 0 2.5 10m
remzerovec
write lab_02_feedback.raw
.endc"}
C {devices/code_shown.sym} 640 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
