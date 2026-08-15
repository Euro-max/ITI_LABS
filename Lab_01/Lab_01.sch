v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 40 40 60 {lab=0}
N 40 -20 100 -20 {lab=Vin}
N 160 -20 220 -20 {lab=Vout}
N 220 40 220 60 {lab=0}
C {res.sym} 130 -20 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 220 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 220 60 0 0 {name=l1 lab=0}
C {vsource.sym} 40 10 0 0 {name=V1 value="PULSE(0 1 5n 100p 100p 10n 20n 2)" savecurrent=false}
C {gnd.sym} 40 60 0 0 {name=l2 lab=0}
C {code_shown.sym} 270 -30 0 0 {name=s1 only_toplevel=false value="
.control
save all
let R_val = 1000
let R_stop = 5000
let R_step = 1000
while R_val le R_stop
  alter R1 R_val
  tran 0.2n 40n
  write rc_ckt.raw
  set appendwrite
  let R_val = R_val + R_step
end
.endc
"}
C {lab_pin.sym} 70 -20 1 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 190 -20 1 0 {name=p2 sig_type=std_logic lab=Vout}
