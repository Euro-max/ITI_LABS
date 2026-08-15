v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -140 270 -140 {lab=VINP}
N 660 -140 750 -140 {lab=VINN}
N 300 -260 300 -170 {lab=#net1}
N 340 -290 580 -290 {lab=#net1}
N 620 -260 620 -170 {lab=VOUT}
N 300 -220 400 -220 {lab=#net1}
N 400 -290 400 -220 {lab=#net1}
N 300 -40 480 -40 {lab=#net2}
N 480 -10 480 10 {lab=#net2}
N 150 -70 150 10 {lab=IBN}
N 150 -20 220 -20 {lab=IBN}
N 220 -20 220 40 {lab=IBN}
N 190 40 220 40 {lab=IBN}
N 220 40 440 40 {lab=IBN}
N 480 40 560 40 {lab=AGND}
N 50 40 150 40 {lab=AGND}
N 480 -40 480 -10 {lab=#net2}
N 620 -110 620 -40 {lab=#net2}
N 480 -40 620 -40 {lab=#net2}
N 300 -110 300 -40 {lab=#net2}
N 150 70 150 120 {lab=AGND}
N 150 120 480 120 {lab=AGND}
N 480 70 480 120 {lab=AGND}
N 620 -210 690 -210 {lab=VOUT}
N 300 -360 300 -320 {lab=AVDD}
N 300 -360 620 -360 {lab=AVDD}
N 620 -360 620 -320 {lab=AVDD}
N 460 -400 460 -360 {lab=AVDD}
N 300 -140 390 -140 {lab=AGND}
N 530 -140 620 -140 {lab=AGND}
N 210 -290 300 -290 {lab=AVDD}
N 620 -290 720 -290 {lab=AVDD}
C {symbols/nfet_03v3.sym} 280 -140 0 0 {name=M1
L=450n
W=8.237u
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
C {symbols/nfet_03v3.sym} 640 -140 0 1 {name=M2
L=450n
W=8.237u
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
C {symbols/nfet_03v3.sym} 460 40 0 0 {name=M3
L=1u
W=4.64*2u
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
C {symbols/nfet_03v3.sym} 170 40 0 1 {name=M4
L=1u
W=4.64u
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
C {iopin.sym} -320 -190 0 0 {name=p1 lab=AVDD}
C {iopin.sym} -320 -120 0 0 {name=p4 lab=IBN}
C {iopin.sym} -330 -60 0 0 {name=p5 lab=AGND}
C {opin.sym} -320 -20 0 0 {name=p8 lab=VOUT}
C {ipin.sym} -280 -160 0 0 {name=p12 lab=VINN}
C {ipin.sym} -280 -220 0 0 {name=p13 lab=VINP}
C {symbols/pfet_03v3.sym} 320 -290 0 1 {name=M5
L=450n
W=7.52u
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
C {symbols/pfet_03v3.sym} 600 -290 0 0 {name=M6
L=450n
W=7.52u
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
C {lab_pin.sym} 150 -60 2 0 {name=p2 sig_type=std_logic lab=IBN}
C {lab_pin.sym} 70 40 1 0 {name=p3 sig_type=std_logic lab=AGND}
C {lab_pin.sym} 540 40 1 0 {name=p6 sig_type=std_logic lab=AGND}
C {lab_pin.sym} 330 120 1 0 {name=p7 sig_type=std_logic lab=AGND}
C {lab_pin.sym} 210 -140 1 0 {name=p10 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 710 -140 1 0 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 660 -210 1 0 {name=p14 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 460 -390 2 0 {name=p9 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 380 -140 1 0 {name=p15 sig_type=std_logic lab=AGND}
C {lab_pin.sym} 550 -140 1 0 {name=p16 sig_type=std_logic lab=AGND}
C {lab_pin.sym} 220 -290 1 0 {name=p17 sig_type=std_logic lab=AVDD}
C {lab_pin.sym} 700 -290 1 0 {name=p18 sig_type=std_logic lab=AVDD}
