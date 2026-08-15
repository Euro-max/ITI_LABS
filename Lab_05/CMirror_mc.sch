v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -380 -80 -380 -60 {lab=#net1}
N -380 -80 -310 -80 {lab=#net1}
N -310 -80 -310 -30 {lab=#net1}
N -340 -30 -310 -30 {lab=#net1}
N -380 -150 -380 -140 {lab=VDD}
N -340 -200 -340 -190 {lab=0}
N -160 -120 -160 -60 {lab=Vout}
N -160 0 -160 10 {lab=0}
N -380 0 -380 20 {lab=0}
N -160 10 -160 30 {lab=0}
N -160 -30 -120 -30 {lab=0}
N -120 -30 -120 10 {lab=0}
N -160 10 -120 10 {lab=0}
N 40 -90 40 -70 {lab=#net2}
N 80 -40 110 -40 {lab=#net3}
N 270 -130 270 -70 {lab=#net4}
N 270 -10 270 0 {lab=0}
N 40 -10 40 10 {lab=0}
N 0 -40 40 -40 {lab=0}
N 0 0 40 0 {lab=0}
N 270 0 270 20 {lab=0}
N 270 -40 310 -40 {lab=0}
N 310 -40 310 0 {lab=0}
N 270 0 310 0 {lab=0}
N 40 -150 40 -90 {lab=#net2}
N 40 -380 40 -370 {lab=VDD}
N 40 -230 40 -210 {lab=#net3}
N 40 -310 40 -290 {lab=#net5}
N 0 -40 0 0 {lab=0}
N -10 -180 40 -180 {lab=0}
N 0 -180 0 -40 {lab=0}
N 270 -150 270 -130 {lab=#net4}
N 270 -180 300 -180 {lab=0}
N 300 -180 300 -40 {lab=0}
N 40 -300 120 -300 {lab=#net5}
N 270 -290 270 -210 {lab=Vout}
N 40 -220 100 -220 {lab=#net3}
N 100 -220 100 -40 {lab=#net3}
N -310 -30 -290 -30 {lab=#net1}
N -340 -190 -340 -180 {lab=0}
N 80 -180 120 -180 {lab=#net5}
N 220 -40 230 -40 {lab=#net6}
N -160 -260 -160 -230 {lab=Vout}
N -230 -30 -200 -30 {lab=#net7}
N 120 -300 120 -180 {lab=#net5}
N 220 -180 230 -180 {lab=#net8}
N 110 -40 120 -40 {lab=#net3}
N 200 -180 220 -180 {lab=#net8}
N 120 -180 140 -180 {lab=#net5}
N 120 -40 160 -40 {lab=#net3}
N -260 -280 -260 -240 {lab=VMIS}
N -400 -30 -380 -30 {lab=0}
N -400 -30 -400 10 {lab=0}
N -400 10 -380 10 {lab=0}
C {isource.sym} -380 -110 0 0 {name=I0 value=10u}
C {symbols/nfet_03v3.sym} -360 -30 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} -180 -30 0 0 {name=M2
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
C {vdd.sym} -380 -150 0 0 {name=l1 lab=VDD}
C {vsource.sym} -340 -230 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -340 -260 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} -160 -90 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {symbols/nfet_03v3.sym} 60 -40 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 250 -40 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 60 -180 0 1 {name=M5
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
C {isource.sym} 40 -340 0 0 {name=I1 value=10u}
C {vdd.sym} 40 -380 0 0 {name=l8 lab=VDD}
C {res.sym} 40 -260 0 0 {name=R1
value=23.532k
footprint=1206
device=resistor
m=1}
C {symbols/nfet_03v3.sym} 250 -180 0 0 {name=M6
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
C {lab_pin.sym} 270 -250 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {asrc.sym} -260 -30 1 0 {name=B1 function="v=v(VMIS)"}
C {vsource.sym} -260 -210 0 0 {name=VMIS_SW value="0" savecurrent=false}
C {gnd.sym} -260 -180 0 0 {name=l9 lab=0}
C {vsource.sym} -160 -200 0 0 {name=VOUT_SW value=0.9 savecurrent=false}
C {gnd.sym} -160 -170 0 0 {name=l10 lab=0}
C {lab_pin.sym} -160 -260 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {gnd.sym} -340 -180 0 0 {name=l3 lab=0}
C {gnd.sym} -380 20 0 0 {name=l4 lab=0}
C {gnd.sym} -160 30 0 0 {name=l5 lab=0}
C {gnd.sym} 40 10 0 0 {name=l6 lab=0}
C {gnd.sym} 270 20 0 0 {name=l7 lab=0}
C {asrc.sym} 190 -40 1 0 {name=B2 function="v=v(VMIS)"}
C {asrc.sym} 170 -180 1 0 {name="VMIS_SW2" function=""}
C {lab_pin.sym} -260 -280 2 0 {name=p3 sig_type=std_logic lab=VMIS}
C {code.sym} 410 -300 0 0 {name=s1 only_toplevel=false value="
.control
shell rm MC_WS_CM.csv
shell rm MC_Simple_CM.csv
alterparam sw_stat_global = 1
alterparam sw_stat_mismatch = 1
reset
let mc_runs = 200
let run = 1
dowhile run <= mc_runs
op
print @m.xm2.m0[id] >> MC_Simple_CM.csv
print @m.xm4.m0[id] >> MC_WS_CM.csv
reset
let run = run + 1
end
.endc"}
C {devices/code_shown.sym} 400 -50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
