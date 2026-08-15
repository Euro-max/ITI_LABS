v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 410 -530 1210 -130 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=8
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
logy=1
color="12 8"
node="ZOUT Mag; vout

vin"
y1=3.1
y2=5.3}
B 2 450 -100 1250 300 {flags=graph
y1=-90
y2=65
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
node=ph(vout)
color=11
dataset=-1
unitx=1
logx=1
logy=0
}
N -120 -390 -120 -370 {lab=Vout}
N -200 -180 -160 -180 {lab=Vin}
N -120 -520 -120 -490 {lab=VDD}
N -370 -490 -370 -470 {lab=VDD}
N -370 -410 -370 -390 {lab=0}
N -280 -180 -260 -180 {lab=0}
N -120 -180 -80 -180 {lab=Vout}
N -80 -220 -80 -180 {lab=Vout}
N -120 -220 -80 -220 {lab=Vout}
N -120 -430 -120 -390 {lab=Vout}
N -120 -370 -120 -310 {lab=Vout}
N -120 -220 -120 -210 {lab=Vout}
N -120 -310 -120 -220 {lab=Vout}
N -340 -180 -280 -180 {lab=0}
N -340 -180 -340 -120 {lab=0}
N -190 -320 -120 -320 {lab=Vout}
C {devices/code_shown.sym} -30 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {symbols/pfet_03v3.sym} -140 -180 0 0 {name=M1
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
C {isource.sym} -120 -460 0 0 {name=I0 value=10u}
C {res.sym} -230 -180 3 0 {name=R1
value="2Meg"
footprint=1206
device=resistor
m=1}
C {vdd.sym} -120 -520 0 0 {name=l2 lab=VDD}
C {vsource.sym} -370 -440 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -370 -390 0 0 {name=l3 lab=0}
C {vdd.sym} -370 -490 0 0 {name=l4 lab=VDD}
C {gnd.sym} -120 -150 0 0 {name=l5 lab=0}
C {lab_pin.sym} -180 -180 1 0 {name=p2 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} -150 -320 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {code.sym} 220 -430 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
set outfile = "zout_results.txt"

* Increased to 100 points per decade for more accurate measurements
ac dec 100 1 10g 
write cd_amp_zout.raw

echo \\"CD Amplifier Zout Sim Results\\" > $outfile

* --- 1. Your standard measurements ---
meas ac zout_low_freq FIND vmag(vout) AT=1k
meas ac zout_high_freq MAX vmag(vout)
echo \\"Zout @ 1kHz = $&zout_low_freq\\" >> $outfile
echo \\"Zout peak (max) = $&zout_high_freq\\" >> $outfile

* --- 2. Mathematical Calculation using OP values ---
let my_pi = 3.14159265359
let my_rsig = 2e6
let my_cgs = 49.57e-15
let my_gm = 100.8e-6

let fz_calc = 1 / (2 * my_pi * my_rsig * my_cgs)
let fp_calc = my_gm / (2 * my_pi * my_cgs)

echo \\"Calculated Math Zero (fz) = $&fz_calc Hz\\" >> $outfile
echo \\"Calculated Math Pole (fp) = $&fp_calc Hz\\" >> $outfile

* --- 3. Measure the Simulated Zero from the AC Curve ---
* The zero starts when the impedance magnitude increases by a factor of sqrt(2)
let zout_3db = zout_low_freq * 1.41421356
meas ac sim_zero WHEN vmag(vout)=zout_3db
echo \\"Simulated AC Curve Zero = $&sim_zero Hz\\" >> $outfile

.endc"}
C {gnd.sym} -340 -120 0 0 {name=l1 lab=0}
C {isource.sym} -190 -290 2 0 {name=I1 value="0 ac 1"}
C {gnd.sym} -190 -260 0 0 {name=l7 lab=0}
