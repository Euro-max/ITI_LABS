v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 940 -520 1740 -120 {flags=graph
y1=-130
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
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
color="7 4 12"
node="VOUT CL=2pF ;vout db20() %1
VOUT CL=4pF ;vout db20() %2
VOUT CL=8pF ;vout db20() %3"
linewidth_mult=1.6}
B 2 930 -80 1730 320 {flags=graph
y1=-120
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="VOUT RSIG=20K   ;vout db20() %4
VOUT RSIG=200K  ;vout db20() %5
VOUT RSIG=2MEG  ;vout db20() %6"
color="7 11 12"
dataset=-1
unitx=1
logx=1
logy=0
}
N 390 -210 390 -190 {lab=Vout}
N 310 0 350 0 {lab=Vin}
N 390 -340 390 -310 {lab=VDD}
N 140 -310 140 -290 {lab=VDD}
N 140 -230 140 -210 {lab=0}
N 230 0 250 0 {lab=Vsig}
N 390 0 430 0 {lab=Vout}
N 430 -40 430 0 {lab=Vout}
N 390 -40 430 -40 {lab=Vout}
N 390 -250 390 -210 {lab=Vout}
N 460 -210 570 -210 {lab=Vout}
N 390 -210 460 -210 {lab=Vout}
N 390 -190 390 -130 {lab=Vout}
N 390 -40 390 -30 {lab=Vout}
N 390 -130 390 -40 {lab=Vout}
N 170 -0 230 0 {lab=Vsig}
N 340 90 340 110 {lab=#net1}
N 340 0 340 30 {lab=Vin}
C {devices/code_shown.sym} 480 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {isource.sym} 390 -280 0 0 {name=I0 value=10u}
C {vsource.sym} 170 30 0 0 {name=V1 value="0 ac 1" savecurrent=false}
C {res.sym} 280 0 3 0 {name=R1
value="2Meg"
footprint=1206
device=resistor
m=1}
C {gnd.sym} 170 60 0 0 {name=l1 lab=0}
C {vdd.sym} 390 -340 0 0 {name=l2 lab=VDD}
C {vsource.sym} 140 -260 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 140 -210 0 0 {name=l3 lab=0}
C {vdd.sym} 140 -310 0 0 {name=l4 lab=VDD}
C {gnd.sym} 390 30 0 0 {name=l5 lab=0}
C {lab_pin.sym} 240 0 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {lab_pin.sym} 330 0 1 0 {name=p2 sig_type=std_logic lab=Vin
}
C {capa.sym} 570 -180 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 460 -210 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {code.sym} 730 -250 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
set outfile = "peaking_results.txt"
save all
save @m.xm1.m0[id]
save @m.xm1.m0[vgs]
save @m.xm1.m0[vds]
save @m.xm1.m0[vdsat]
save @m.xm1.m0[vth]
save @m.xm1.m0[gm]
save @m.xm1.m0[gds]
save @m.xm1.m0[gmbs]
save @m.xm1.m0[cgs]
save @m.xm1.m0[cgd]
save @m.xm1.m0[csb]
save @m.xm1.m0[cdb]
op
write cd_amp_ac.raw
ac dec 20 1 10g
set appendwrite
write cd_amp_ac.raw
echo \\"CD Amplifier AC Sim Results\\" > $outfile
foreach cap 2p 4p 8p
echo \\"Running Sim using Cap=$cap\\"
alter c1=$cap
ac dec 20 1 10g
write cd_amp_ac.raw
meas ac gain_peak_cap MAX vdb(vout)
echo \\"CL = $cap, Gain Peak (dB) = $&gain_peak_cap \\" >> $outfile
end
* Reset C1 before R sweep
alter c1=2p
foreach my_res 20k 200k 2meg
echo \\"Running Sim using Res=$my_res\\"
alter r1=$my_res
ac dec 20 1 10g
write cd_amp_ac.raw
meas ac gain_peak_res MAX vdb(vout)
echo \\"RES = $my_res, Gain Peak (dB) = $&gain_peak_res \\" >> $outfile
end
.endc"}
C {gnd.sym} 570 -150 0 0 {name=l6 lab=0}
C {res.sym} 340 60 0 0 {name=R2
value="421.2k"
footprint=1206
device=resistor
m=1}
C {capa.sym} 340 140 0 0 {name=C2
m=1
value=48.37f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 170 0 0 {name=l7 lab=0}
C {symbols/pfet_03v3.sym} 370 0 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad=0
pd=0
as=0
ps=0
nrd=0
nrs=0
sa=0
sb=0
sd=0
model=pfet_03v3
spiceprefix=X}
