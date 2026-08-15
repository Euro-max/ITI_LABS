v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 350 -760 1150 -360 {flags=graph
y1=0.66
y2=1.76
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7057637e-06
x2=2.9127252e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="vsig
vout"
color="11 8"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 360 -330 1160 70 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=1.7057637e-06
x2=2.9127252e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="12 11 8"
node="VOUT CL=2p;vout%0
VOUT CL=4p;vout%1
VOUT CL=8p;vout%2"}
B 2 1190 -750 1990 -350 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7057637e-06
x2=2.9127252e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="6 7 11"
node="RSIG=20k;vout%0
RSIG=200k;vout%1
RSIG=2Meg ;vout%2"}
N -170 -460 -170 -440 {lab=Vout}
N -250 -250 -210 -250 {lab=Vin}
N -170 -590 -170 -560 {lab=VDD}
N -420 -560 -420 -540 {lab=VDD}
N -420 -480 -420 -460 {lab=0}
N -330 -250 -310 -250 {lab=Vsig}
N -170 -250 -130 -250 {lab=Vout}
N -130 -290 -130 -250 {lab=Vout}
N -170 -290 -130 -290 {lab=Vout}
N -170 -500 -170 -460 {lab=Vout}
N -100 -460 10 -460 {lab=Vout}
N -170 -460 -100 -460 {lab=Vout}
N -170 -440 -170 -380 {lab=Vout}
N -170 -290 -170 -280 {lab=Vout}
N -170 -380 -170 -290 {lab=Vout}
N -390 -250 -330 -250 {lab=Vsig}
C {devices/code_shown.sym} -80 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/pfet_03v3.sym} -190 -250 0 0 {name=M1
L=1u
W=19.36u
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
C {isource.sym} -170 -530 0 0 {name=I0 value=10u}
C {vsource.sym} -390 -220 0 0 {name=V1 value="pulse(0 100m 2u 1n 1n 4u 8u)" savecurrent=false}
C {res.sym} -280 -250 3 0 {name=R1
value="2Meg"
footprint=1206
device=resistor
m=1}
C {gnd.sym} -390 -190 0 0 {name=l1 lab=0}
C {vdd.sym} -170 -590 0 0 {name=l2 lab=VDD}
C {vsource.sym} -420 -510 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -420 -460 0 0 {name=l3 lab=0}
C {vdd.sym} -420 -560 0 0 {name=l4 lab=VDD}
C {gnd.sym} -170 -220 0 0 {name=l5 lab=0}
C {lab_pin.sym} -320 -250 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {lab_pin.sym} -230 -250 1 0 {name=p2 sig_type=std_logic lab=Vin
}
C {capa.sym} 10 -430 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -100 -460 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {code.sym} 170 -500 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
set outfile = "overshoot_resultss.txt"
tran 10n 10u
write cd_amp_aha.raw
set appendwrite
echo \\"CD Amplifier Transient Sim Results\\" > $outfile
foreach cap 2p 4p 8p
echo \\"Running Sim using Cap=$cap\\"
alter c1=$cap
tran 10n 10u
write cd_amp_aha.raw
meas tran vpeak MAX v(vout)
meas tran vfinal AVG v(vout) FROM=5.9u TO=6u
meas tran vinitial AVG v(vout) FROM=1u TO=1.1u
let overshoot_percent=(vpeak - vfinal)/(vfinal-vinitial) * 100
echo \\"CL = $cap, Overshoot (%) = $&overshoot_percent\\" >> $outfile
end
alter c1=2p
foreach my_res 20k 200k 2meg
echo \\"Running Sim using Res=$my_res\\"
alter r1=$my_res
tran 10n 10u
write cd_amp_aha.raw
meas tran vpeak MAX v(vout)
meas tran vfinal AVG v(vout) FROM=5.9u TO=6u
meas tran vinitial AVG v(vout) FROM=1u TO=1.1u
let overshoot_percent = (vpeak - vfinal)/(vfinal - vinitial) * 100
echo \\"Rsig = $my_res, Overshoot (%) = $&overshoot_percent\\" >> $outfile
end
.endc"}
C {gnd.sym} 10 -400 0 0 {name=l6 lab=0}
