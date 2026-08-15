v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 960 -490 1760 -90 {flags=graph
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
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node=@m.xm1.m0[gm]}
N 480 -100 480 -80 {lab=0}
N 480 -130 510 -130 {lab=0}
N 510 -130 510 -90 {lab=0}
N 480 -90 510 -90 {lab=0}
N 480 -170 480 -160 {lab=Vout}
N 480 -180 480 -170 {lab=Vout}
N 480 -290 480 -270 {lab=VDD}
N 480 -210 480 -180 {lab=Vout}
N 300 -70 300 -60 {lab=0}
N 300 -130 360 -130 {lab=Vin}
N 360 -130 440 -130 {lab=Vin}
N 150 -270 150 -260 {lab=VDD}
N 150 -200 150 -190 {lab=0}
C {devices/code_shown.sym} 90 -20 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/nfet_03v3.sym} 460 -130 0 0 {name=M1
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
C {gnd.sym} 480 -80 0 0 {name=l1 lab=0}
C {vdd.sym} 480 -290 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} 480 -170 2 1 {name=p2 sig_type=std_logic lab=Vout}
C {res.sym} 480 -240 0 0 {name=R1
value=100k
ac=1e12
footprint=1206
device=resistor
m=1
}
C {vsource.sym} 300 -100 0 0 {name=V1 value="sine(0.8163 10m 1meg)" savecurrent=false}
C {gnd.sym} 300 -60 0 0 {name=l3 lab=0}
C {lab_pin.sym} 330 -130 1 0 {name=p1 sig_type=std_logic lab=Vin}
C {code_shown.sym} 620 -310 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.m0[id]
save @m.xm1.m0[gm]
save @m.xm1.m0[gds]
save @m.xm1.m0[vgs]
save @m.xm1.m0[vds]
*op
tran 0.1u 2u
remzerovec
write lab_02_transient.raw
.endc"}
C {vsource.sym} 150 -230 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} 150 -190 0 0 {name=l6 lab=0}
C {vdd.sym} 150 -270 0 0 {name=l7 lab=VDD}
