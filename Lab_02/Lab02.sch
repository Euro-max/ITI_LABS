v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -110 360 -90 {lab=0}
N 360 -140 390 -140 {lab=0}
N 390 -140 390 -100 {lab=0}
N 360 -100 390 -100 {lab=0}
N 360 -180 360 -170 {lab=Vout}
N 120 -210 120 -170 {lab=#net1}
N 160 -140 170 -140 {lab=#net1}
N 190 -190 190 -140 {lab=#net1}
N 120 -190 190 -190 {lab=#net1}
N 170 -140 190 -140 {lab=#net1}
N 250 -140 320 -140 {lab=#net2}
N 290 -140 290 -120 {lab=#net2}
N 240 -50 290 -50 {lab=Vin}
N 290 -60 290 -50 {lab=Vin}
N 120 -110 120 -80 {lab=0}
N 80 -140 120 -140 {lab=0}
N 80 -140 80 -90 {lab=0}
N 80 -90 120 -90 {lab=0}
N 360 -190 360 -180 {lab=Vout}
N 520 -260 520 -250 {lab=VDD}
N 520 -190 520 -180 {lab=0}
N 360 -300 360 -280 {lab=VDD}
N 360 -220 360 -190 {lab=Vout}
N 120 -290 120 -270 {lab=VDD}
C {devices/code_shown.sym} 460 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/nfet_03v3.sym} 340 -140 0 0 {name=M1
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
C {gnd.sym} 360 -90 0 0 {name=l1 lab=0}
C {vdd.sym} 360 -300 0 0 {name=l2 lab=VDD}
C {symbols/nfet_03v3.sym} 140 -140 0 1 {name=M2
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
C {isource.sym} 120 -240 0 0 {name=I0 value=10u}
C {vdd.sym} 120 -290 0 0 {name=l3 lab=VDD}
C {res.sym} 220 -140 3 0 {name=R2
value=1
ac=1e12
footprint=1206
device=resistor
m=1
}
C {vsource.sym} 240 -20 0 0 {name=V1
value="ac 1"
savecurrent=false
}
C {res.sym} 290 -90 0 0 {name=R3
value="1e12 ac=1"
footprint=1206
device=resistor
m=1
}
C {gnd.sym} 240 10 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -80 0 0 {name=l5 lab=0}
C {lab_pin.sym} 260 -50 1 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 360 -180 2 1 {name=p2 sig_type=std_logic lab=Vout}
C {vsource.sym} 520 -220 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} 520 -180 0 0 {name=l6 lab=0}
C {vdd.sym} 520 -260 0 0 {name=l7 lab=VDD}
C {code_shown.sym} 620 -340 0 0 {name=s1 only_toplevel=false value=".control
save all
save @m.xm1.m0[id]
save @m.xm1.m0[gm]
save @m.xm1.m0[gds]
save @m.xm1.m0[vgs]
save @m.xm1.m0[vds]
*op
ac dec 10 1 10g
write lab_02.raw
.endc"}
C {res.sym} 360 -250 0 0 {name=R1
value=100k
ac=1e12
footprint=1206
device=resistor
m=1
}
