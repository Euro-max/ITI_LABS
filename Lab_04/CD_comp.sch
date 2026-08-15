v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 310 -780 1110 -380 {flags=graph
y1=-0.0051
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4126002e-06
x2=8.7854002e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="vsig
vout
vin"
color="5 7 13"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 360 -350 1160 50 {flags=graph
y1=0.93
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=1.4126002e-06
x2=8.7854002e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 11 8"
node="CL=2pF;vout%1
CL=4pF;vout%2
CL=8pF;vout%3"}
N -380 -520 -380 -500 {lab=Vout}
N -460 -310 -420 -310 {lab=Vin}
N -380 -650 -380 -620 {lab=VDD}
N -630 -620 -630 -600 {lab=VDD}
N -630 -540 -630 -520 {lab=0}
N -540 -310 -520 -310 {lab=Vsig}
N -380 -310 -340 -310 {lab=Vout}
N -340 -350 -340 -310 {lab=Vout}
N -380 -350 -340 -350 {lab=Vout}
N -380 -560 -380 -520 {lab=Vout}
N -310 -520 -200 -520 {lab=Vout}
N -380 -520 -310 -520 {lab=Vout}
N -380 -500 -380 -440 {lab=Vout}
N -380 -350 -380 -340 {lab=Vout}
N -380 -440 -380 -350 {lab=Vout}
N -600 -310 -540 -310 {lab=Vsig}
N -430 -240 -430 -220 {lab=#net1}
N -430 -310 -430 -300 {lab=Vin}
C {devices/code_shown.sym} -290 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/pfet_03v3.sym} -400 -310 0 0 {name=M1
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
C {isource.sym} -380 -590 0 0 {name=I0 value=10u}
C {vsource.sym} -600 -280 0 0 {name=V1 value="pulse(0 100m 2u 1n 1n 4u 8u" savecurrent=false}
C {res.sym} -490 -310 3 0 {name=R1
value="2Meg"
footprint=1206
device=resistor
m=1}
C {gnd.sym} -600 -250 0 0 {name=l1 lab=0}
C {vdd.sym} -380 -650 0 0 {name=l2 lab=VDD}
C {vsource.sym} -630 -570 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -630 -520 0 0 {name=l3 lab=0}
C {vdd.sym} -630 -620 0 0 {name=l4 lab=VDD}
C {gnd.sym} -380 -280 0 0 {name=l5 lab=0}
C {lab_pin.sym} -530 -310 1 0 {name=p1 sig_type=std_logic lab=Vsig}
C {lab_pin.sym} -440 -310 1 0 {name=p2 sig_type=std_logic lab=Vin
}
C {capa.sym} -200 -490 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -310 -520 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {code.sym} -40 -560 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
set outfile = "overshoot_results.txt"
tran 10n 10u
write cd_amp_comp.raw
set appendwrite
echo \\"CD Amplifier Transient Sim Results\\" > $outfile
foreach cap 2p 4p 8p
echo \\"Running Sim using Cap=$cap\\"
alter c1=$cap
tran 10n 10u
write cd_amp_comp.raw
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
write cd_amp_comp.raw
meas tran vpeak MAX v(vout)
meas tran vfinal AVG v(vout) FROM=5.9u TO=6u
meas tran vinitial AVG v(vout) FROM=1u TO=1.1u
let overshoot_percent = (vpeak - vfinal)/(vfinal - vinitial) * 100
echo \\"Rsig = $my_res, Overshoot (%) = $&overshoot_percent\\" >> $outfile
end
.endc"}
C {gnd.sym} -200 -460 0 0 {name=l6 lab=0}
C {res.sym} -430 -270 0 0 {name=R2
value="421.2k"
footprint=1206
device=resistor
m=1}
C {capa.sym} -430 -190 0 0 {name=C2
m=1
value=48.37f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -430 -160 0 0 {name=l7 lab=0}
