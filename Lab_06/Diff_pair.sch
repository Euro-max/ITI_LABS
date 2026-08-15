v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 710 -280 710 -270 {lab=VoutN}
N 710 -120 950 -120 {lab=GND}
N 710 -140 710 -120 {lab=GND}
N 950 -140 950 -120 {lab=GND}
N 710 -370 710 -340 {lab=#net1}
N 710 -370 950 -370 {lab=#net1}
N 950 -370 950 -340 {lab=#net1}
N 840 -550 840 -500 {lab=#net2}
N 900 -310 950 -310 {lab=VDD}
N 710 -310 760 -310 {lab=VDD}
N 840 -660 840 -610 {lab=VDD}
N 510 -660 840 -660 {lab=VDD}
N 510 -660 510 -610 {lab=VDD}
N 550 -580 800 -580 {lab=IBN2}
N 510 -550 510 -490 {lab=#net3}
N 500 -580 510 -580 {lab=VDD}
N 500 -620 500 -580 {lab=VDD}
N 840 -580 850 -580 {lab=VDD}
N 840 -620 850 -620 {lab=VDD}
N 500 -620 510 -620 {lab=VDD}
N 710 -270 710 -200 {lab=VoutN}
N 950 -280 950 -210 {lab=VoutP}
N 950 -210 950 -200 {lab=VoutP}
N 660 -310 670 -310 {lab=VINP}
N 640 -310 660 -310 {lab=VINP}
N 990 -310 1030 -310 {lab=VINN}
N 240 -410 240 -350 {lab=IBN1}
N 230 -440 240 -440 {lab=VDD}
N 230 -480 230 -440 {lab=VDD}
N 240 -660 510 -660 {lab=VDD}
N 280 -440 310 -440 {lab=IBN1}
N 310 -440 310 -390 {lab=IBN1}
N 240 -390 310 -390 {lab=IBN1}
N 510 -490 510 -460 {lab=#net3}
N 550 -440 550 -430 {lab=IBN1}
N 310 -440 550 -440 {lab=IBN1}
N 500 -430 510 -430 {lab=#net3}
N 500 -470 500 -430 {lab=#net3}
N 500 -470 510 -470 {lab=#net3}
N 510 -400 510 -350 {lab=IBN2}
N 510 -380 570 -380 {lab=IBN2}
N 570 -580 570 -380 {lab=IBN2}
N 850 -620 850 -580 {lab=VDD}
N 840 -500 840 -460 {lab=#net2}
N 550 -430 800 -430 {lab=IBN1}
N 840 -400 840 -370 {lab=#net1}
N 240 -660 240 -470 {lab=VDD}
N 230 -480 240 -480 {lab=VDD}
N 840 -430 860 -430 {lab=#net2}
N 860 -470 860 -430 {lab=#net2}
N 840 -470 860 -470 {lab=#net2}
C {symbols/pfet_03v3.sym} 690 -310 0 0 {name=M1
L=\{LP2\}
W=\{WP2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 970 -310 0 1 {name=M2
L=\{LP2\}
W=\{WP2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 830 -120 1 0 {name=p3 sig_type=std_logic lab=GND
}
C {symbols/pfet_03v3.sym} 820 -580 0 0 {name=M3
L=\{LP1\}
W=\{WP1*2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -580 0 1 {name=M4
L=\{LP1\}
W=\{WP1\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 680 -660 1 0 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1030 -310 0 1 {name=p5 sig_type=std_logic lab=VINN
}
C {lab_pin.sym} 710 -240 0 0 {name=p6 sig_type=std_logic lab=VoutN

}
C {lab_pin.sym} 760 -310 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 900 -310 2 1 {name=p8 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 640 -310 0 0 {name=p2 sig_type=std_logic lab=VINP

}
C {lab_pin.sym} 950 -240 0 1 {name=p9 sig_type=std_logic lab=VoutP
}
C {iopin.sym} 200 -290 0 0 {name=p10 lab=IBN1}
C {ipin.sym} 80 -210 0 0 {name=p11 lab=VINP}
C {opin.sym} 20 -150 0 0 {name=p12 lab=VoutP}
C {ipin.sym} 80 -190 0 0 {name=p13 lab=VINN}
C {iopin.sym} 30 -280 0 0 {name=p14 lab=VDD}
C {iopin.sym} 30 -310 0 0 {name=p15 lab=GND}
C {opin.sym} 20 -130 0 0 {name=p16 lab=VoutN}
C {res.sym} 950 -170 0 1 {name=R2
value=\{RD\}
footprint=1206
device=resistor
m=1}
C {res.sym} 710 -170 0 1 {name=R1
value=\{RD\}
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 240 -360 0 1 {name=p17 sig_type=std_logic lab=IBN1
}
C {symbols/pfet_03v3.sym} 260 -440 0 1 {name=M5
L=\{LP1\}
W=\{WP1*0.25\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -430 0 1 {name=M6
L=\{LP1\}
W=\{WP1\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 510 -360 0 1 {name=p1 sig_type=std_logic lab=IBN2
}
C {symbols/pfet_03v3.sym} 820 -430 0 0 {name=M7
L=\{LP1\}
W=\{WP1*2\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 200 -260 0 0 {name=p18 lab=IBN2}
