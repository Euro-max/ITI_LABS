v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1260 -490 2060 -90 {flags=graph
y1=0.00018
y2=8.4
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color="4 7"
node="vout2
vout1"}
N 60 -390 60 -370 {lab=#net1}
N 60 -450 100 -450 {lab=Vsig}
N 60 -310 60 -300 {lab=0}
N 220 -530 220 -520 {lab=VDD}
N 220 -460 220 -410 {lab=#net2}
N 170 -430 220 -430 {lab=#net2}
N 170 -430 170 -380 {lab=#net2}
N 170 -380 180 -380 {lab=#net2}
N 220 -430 260 -430 {lab=#net2}
N 320 -430 350 -430 {lab=Vsig}
N 220 -350 220 -330 {lab=0}
N 220 -380 250 -380 {lab=0}
N 250 -380 250 -340 {lab=0}
N 220 -340 250 -340 {lab=0}
N 390 -370 440 -370 {lab=Vsig}
N 440 -370 450 -370 {lab=Vsig}
N 510 -370 540 -370 {lab=#net3}
N 580 -440 580 -400 {lab=Vout1}
N 580 -520 580 -500 {lab=VDD}
N 580 -340 580 -310 {lab=0}
N 580 -370 610 -370 {lab=0}
N 610 -370 610 -330 {lab=0}
N 580 -330 610 -330 {lab=0}
N 580 -430 690 -430 {lab=Vout1}
N 770 -330 780 -330 {lab=Vsig}
N 840 -330 870 -330 {lab=#net4}
N 910 -400 910 -360 {lab=#net5}
N 910 -300 910 -270 {lab=0}
N 910 -290 940 -290 {lab=0}
N 910 -550 1020 -550 {lab=Vout2}
N 910 -570 910 -530 {lab=Vout2}
N 910 -470 910 -400 {lab=#net5}
N 820 -500 870 -500 {lab=VB}
N 940 -330 940 -290 {lab=0}
N 910 -330 940 -330 {lab=0}
N 910 -500 940 -500 {lab=0}
N 940 -500 940 -330 {lab=0}
N 740 -330 770 -330 {lab=Vsig}
N 1130 -400 1130 -360 {lab=#net6}
N 1130 -300 1130 -270 {lab=0}
N 1130 -290 1160 -290 {lab=0}
N 1130 -470 1130 -400 {lab=#net6}
N 1130 -330 1160 -330 {lab=0}
N 1130 -500 1160 -500 {lab=0}
N 1160 -500 1160 -330 {lab=0}
N 1160 -330 1160 -290 {lab=0}
N 1130 -580 1130 -530 {lab=VB}
N 1070 -560 1130 -560 {lab=VB}
N 1070 -560 1070 -500 {lab=VB}
N 1070 -500 1090 -500 {lab=VB}
N 1070 -500 1070 -330 {lab=VB}
N 1070 -330 1090 -330 {lab=VB}
N 1130 -560 1160 -560 {lab=VB}
C {devices/code_shown.sym} -60 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/nfet_03v3.sym} 200 -380 0 0 {name=M1
L=350n
W=3.48u
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
C {vsource.sym} 60 -340 0 0 {name=V1 value="ac 1" savecurrent=false}
C {res.sym} 60 -420 0 0 {name=R1
value="1e12 ac=1"
footprint=1206
device=resistor
m=1}
C {capa.sym} 690 -400 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 90 -450 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {gnd.sym} 60 -300 0 0 {name=l1 lab=0}
C {vdd.sym} 350 -310 0 0 {name=l2 lab=VDD}
C {vsource.sym} 350 -280 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 350 -250 0 0 {name=l3 lab=0}
C {isource.sym} 220 -490 0 0 {name=I0 value=20u}
C {vdd.sym} 220 -530 0 0 {name=l4 lab=VDD}
C {res.sym} 290 -430 3 0 {name=R2
value="1 ac=1e12"
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 340 -430 1 0 {name=p2 sig_type=std_logic lab=Vsig}
C {gnd.sym} 220 -330 0 0 {name=l5 lab=0}
C {lab_pin.sym} 410 -370 1 0 {name=p3 sig_type=std_logic lab=Vsig}
C {res.sym} 480 -370 3 0 {name=R3
value=10Meg
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 560 -370 0 0 {name=M2
L=350n
W=3.48u
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
C {res.sym} 580 -470 0 0 {name=R4
value=45k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 580 -520 0 0 {name=l6 lab=VDD}
C {gnd.sym} 580 -310 0 0 {name=l7 lab=0}
C {gnd.sym} 690 -370 0 0 {name=l8 lab=0}
C {lab_pin.sym} 660 -430 1 0 {name=p4 sig_type=std_logic lab=Vout1}
C {capa.sym} 1020 -520 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {res.sym} 810 -330 3 0 {name=R5
value=10Meg
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 890 -330 0 0 {name=M3
L=350n
W=3.48u
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
C {res.sym} 910 -600 0 0 {name=R6
value=45k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 910 -630 0 0 {name=l9 lab=VDD}
C {gnd.sym} 910 -270 0 0 {name=l10 lab=0}
C {gnd.sym} 1020 -490 0 0 {name=l11 lab=0}
C {lab_pin.sym} 990 -550 1 0 {name=p6 sig_type=std_logic lab=Vout2}
C {symbols/nfet_03v3.sym} 890 -500 0 0 {name=M4
L=350n
W=3.48u
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
C {lab_pin.sym} 840 -500 1 0 {name=p7 sig_type=std_logic lab=VB}
C {lab_pin.sym} 750 -330 1 0 {name=p5 sig_type=std_logic lab=Vsig}
C {symbols/nfet_03v3.sym} 1110 -330 0 0 {name=M5
L=5.14u
W=3.48u
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
C {gnd.sym} 1130 -270 0 0 {name=l12 lab=0}
C {symbols/nfet_03v3.sym} 1110 -500 0 0 {name=M6
L=350n
W=3.48u
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
C {isource.sym} 1130 -610 0 0 {name=I1 value=20u}
C {lab_pin.sym} 1150 -560 1 0 {name=p8 sig_type=std_logic lab=VB}
C {vdd.sym} 1130 -640 0 0 {name=l13 lab=VDD}
C {code.sym} 670 -610 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all

* Explicitly saving operating points to avoid loop expansion bugs
save @m.xm1.m0[id] @m.xm2.m0[id] @m.xm3.m0[id] @m.xm4.m0[id] @m.xm5.m0[id]
save @m.xm1.m0[vgs] @m.xm2.m0[vgs] @m.xm3.m0[vgs] @m.xm4.m0[vgs] @m.xm5.m0[vgs]
save @m.xm1.m0[vds] @m.xm2.m0[vds] @m.xm3.m0[vds] @m.xm4.m0[vds] @m.xm5.m0[vds]
save @m.xm1.m0[vdsat] @m.xm2.m0[vdsat] @m.xm3.m0[vdsat] @m.xm4.m0[vdsat] @m.xm5.m0[vdsat]
save @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth] @m.xm5.m0[vth]
save @m.xm1.m0[gm] @m.xm2.m0[gm] @m.xm3.m0[gm] @m.xm4.m0[gm] @m.xm5.m0[gm]
save @m.xm1.m0[gds] @m.xm2.m0[gds] @m.xm3.m0[gds] @m.xm4.m0[gds] @m.xm5.m0[gds]
save @m.xm1.m0[gmbs] @m.xm2.m0[gmbs] @m.xm3.m0[gmbs] @m.xm4.m0[gmbs] @m.xm5.m0[gmbs]
save @m.xm1.m0[cgg] @m.xm2.m0[cgg] @m.xm3.m0[cgg] @m.xm4.m0[cgg] @m.xm5.m0[cgg]
save @m.xm1.m0[cdd] @m.xm2.m0[cdd] @m.xm3.m0[cdd] @m.xm4.m0[cdd] @m.xm5.m0[cdd]
save @m.xm1.m0[css] @m.xm2.m0[css] @m.xm3.m0[css] @m.xm4.m0[css] @m.xm5.m0[css]
save @m.xm1.m0[cgs] @m.xm2.m0[cgs] @m.xm3.m0[cgs] @m.xm4.m0[cgs] @m.xm5.m0[cgs]
save @m.xm1.m0[cgd] @m.xm2.m0[cgd] @m.xm3.m0[cgd] @m.xm4.m0[cgd] @m.xm5.m0[cgd]

op
write lab_03_cascode_for_BW.raw

set appendwrite
ac dec 10 1 10G

meas ac DC_GAIN_1 find vmag(vout1) at=1
let A3db = DC_GAIN_1/sqrt(2)
meas ac BW_1 when vmag(vout1)=A3db fall=1
let GBW_1 = DC_GAIN_1 * BW_1
meas ac UGF_1 when vmag(vout1)=1 fall=1

meas ac DC_GAIN_2 find vmag(vout2) at=1
let A3db = DC_GAIN_2/sqrt(2)
meas ac BW_2 when vmag(vout2)=A3db fall=1
let GBW_2 = DC_GAIN_2 * BW_2
meas ac UGF_2 when vmag(vout2)=1 fall=1

print DC_GAIN_1 BW_1 GBW_1 UGF_1 > lab_03_results.txt
print DC_GAIN_2 BW_2 GBW_2 UGF_2 >> lab_03_results.txt

remzerovec
write lab_03_cascode_for_BW.raw
.endc"}
