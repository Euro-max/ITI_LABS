v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 -180 70 -180 {lab=IBN}
N 20 -20 100 -20 {lab=#net1}
N 100 -20 110 -20 {lab=#net1}
N 110 -150 110 -20 {lab=#net1}
N 110 -20 220 -20 {lab=#net1}
N 20 -20 20 30 {lab=#net1}
N 220 -20 220 30 {lab=#net1}
N 20 90 20 120 {lab=VOUTN}
N 220 90 220 120 {lab=VOUTP}
N 20 260 220 260 {lab=AGND}
N 120 260 120 290 {lab=AGND}
N -210 -260 110 -260 {lab=AVDD}
N -210 -150 -210 -80 {lab=IBN}
N -210 -110 -130 -110 {lab=IBN}
N -130 -180 -130 -110 {lab=IBN}
N -60 60 -20 60 {lab=VINP}
N 260 60 310 60 {lab=VINN}
N 20 120 20 150 {lab=VOUTN}
N 220 120 220 150 {lab=VOUTP}
N 20 210 20 260 {lab=AGND}
N 220 210 220 260 {lab=AGND}
N 20 60 70 60 {lab=AVDD}
N 150 60 220 60 {lab=AVDD}
N -210 -260 -210 -210 {lab=AVDD}
N 110 -260 110 -210 {lab=AVDD}
N -310 -180 -210 -180 {lab=AVDD}
N 110 -180 210 -180 {lab=AVDD}
C {symbols/pfet_03v3.sym} -190 -180 0 1 {name=M3
L=\{LP1\}
W=\{WP1\}
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
C {symbols/pfet_03v3.sym} 240 60 0 1 {name=M4
L=\{LP2\}
W=\{WP2\}
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
C {res.sym} 20 180 0 0 {name=R1
value=\{RD\}
footprint=1206
device=resistor
m=1}
C {res.sym} 220 180 0 0 {name=R2
value=\{RD\}
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -60 60 0 0 {name=p1 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 300 60 2 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 120 290 2 0 {name=p3 sig_type=std_logic lab=AGND}
C {lab_pin.sym} -20 -260 1 0 {name=p4 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 20 120 0 0 {name=p5 sig_type=std_logic lab=VOUTN}
C {lab_pin.sym} 220 120 0 0 {name=p6 sig_type=std_logic lab=VOUTP}
C {lab_wire.sym} -210 -80 0 0 {name=p7 sig_type=std_logic lab=IBN}
C {iopin.sym} -430 -80 0 0 {name=p8 lab=IBN}
C {iopin.sym} -430 -40 0 0 {name=p9 lab=AGND
}
C {iopin.sym} -430 0 0 0 {name=p10 lab=AVDD}
C {ipin.sym} -440 60 0 0 {name=p11 lab=VINN}
C {ipin.sym} -440 90 0 0 {name=p12 lab=VINP}
C {opin.sym} -380 70 0 0 {name=p13 lab=VOUTP}
C {opin.sym} -380 90 0 0 {name=p14 lab=VOUTN}
C {lab_pin.sym} 60 60 0 0 {name=p15 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 160 60 0 0 {name=p16 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 0 60 0 0 {name=M1
L=\{LP2\}
W=\{WP2\}
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
C {lab_pin.sym} -290 -180 1 0 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 200 -180 1 0 {name=p18 sig_type=std_logic lab=AVDD}
C {symbols/pfet_03v3.sym} 90 -180 0 0 {name=M2
L=\{LP1\}
W=\{2*WP1\}
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
