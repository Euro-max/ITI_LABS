v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 540 -540 1340 -140 {flags=graph
y1=0
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6891963e-06
x2=6.6043963e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="vsig
vout"
color="8 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 550 -110 1350 290 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=1.6891963e-06
x2=6.6043963e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="6 11 8"
node="CL=2pF;vout%1
CL=4pF;vout%2
CL=8pF;vout%3"}
B 2 1380 -530 2180 -130 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6891963e-06
x2=6.6043963e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="8 4 6"
node="RSIG=20k;vout%4
RSIG=200k;vout%5
RSIG=2meg;vout%6"}
N 20 -240 20 -220 {lab=Vout}
N -60 -30 -20 -30 {lab=Vin}
N 20 -370 20 -340 {lab=VDD}
N -230 -340 -230 -320 {lab=VDD}
N -230 -260 -230 -240 {lab=0}
N -140 -30 -120 -30 {lab=Vsig}
N 20 -30 60 -30 {lab=Vout}
N 60 -70 60 -30 {lab=Vout}
N 20 -70 60 -70 {lab=Vout}
N 20 -280 20 -240 {lab=Vout}
N 90 -240 200 -240 {lab=Vout}
N 20 -240 90 -240 {lab=Vout}
N 20 -220 20 -160 {lab=Vout}
N 20 -70 20 -60 {lab=Vout}
N 20 -160 20 -70 {lab=Vout}
N -200 -30 -140 -30 {lab=Vsig}
C {devices/code_shown.sym} 110 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/pfet_03v3.sym} 0 -30 0 0 {name=M1
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
C {isource.sym} 20 -310 0 0 {name=I0 value=10u}
C {vsource.sym} -200 0 0 0 {name=V1 value="pulse(0 100m 2u 1n 1n 4u 8u)" savecurrent=false}
C {res.sym} -90 -30 3 0 {name=R1
value="2Meg"
footprint=1206
device=resistor
m=1}
C {gnd.sym} -200 30 0 0 {name=l1 lab=0}
C {vdd.sym} 20 -370 0 0 {name=l2 lab=VDD}
C {vsource.sym} -230 -290 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -230 -240 0 0 {name=l3 lab=0}
C {vdd.sym} -230 -340 0 0 {name=l4 lab=VDD}
C {gnd.sym} 20 0 0 0 {name=l5 lab=0}
C {lab_pin.sym} -130 -30 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {lab_pin.sym} -40 -30 1 0 {name=p2 sig_type=std_logic lab=Vin
}
C {capa.sym} 200 -210 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 90 -240 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {code.sym} 360 -280 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
set outfile = "overshoot_resultss.txt"
tran 10n 10u
write cd_amp_ahat.raw
set appendwrite
echo \\"CD Amplifier Transient Sim Results\\" > $outfile
foreach cap 2p 4p 8p
echo \\"Running Sim using Cap=$cap\\"
alter c1=$cap
tran 10n 10u
write cd_amp_ahat.raw
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
write cd_amp_ahat.raw
meas tran vpeak MAX v(vout)
meas tran vfinal AVG v(vout) FROM=5.9u TO=6u
meas tran vinitial AVG v(vout) FROM=1u TO=1.1u
let overshoot_percent = (vpeak - vfinal)/(vfinal - vinitial) * 100
echo \\"Rsig = $my_res, Overshoot (%) = $&overshoot_percent\\" >> $outfile
end
.endc"}
C {gnd.sym} 200 -180 0 0 {name=l6 lab=0}
