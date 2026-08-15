v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 680 10 680 20 {lab=0}
N 20 55 20 70 {lab=0}
N 20 -30 20 0 {lab=VDD}
N 670 -120 670 -110 {lab=VDD}
N 730 -70 810 -70 {lab=Vout}
N 810 -70 810 80 {lab=Vout}
N 740 90 810 90 {lab=Vout}
N 810 80 810 90 {lab=Vout}
N 570 90 680 90 {lab=VINN}
N 570 -20 570 90 {lab=VINN}
N 570 -20 600 -20 {lab=VINN}
N 640 -160 640 -130 {lab=#net1}
N 640 -230 640 -220 {lab=VDD}
N 90 -100 90 -90 {lab=#net2}
N 90 -200 90 -160 {lab=VINP}
N 90 -30 90 -10 {lab=0}
N 250 -70 250 -60 {lab=#net3}
N 250 -170 250 -130 {lab=VINN}
N 250 0 250 20 {lab=0}
N 130 185 130 200 {lab=0}
N 130 100 130 130 {lab=Vid}
N 210 185 210 200 {lab=0}
N 210 100 210 130 {lab=Vicm}
N 380 -80 380 -70 {lab=#net4}
N 380 -180 380 -140 {lab=VINP}
N 380 -10 380 10 {lab=0}
N 550 -90 600 -90 {lab=VINP}
N 810 -70 980 -70 {lab=Vout}
C {OTA_sch.sym} 680 -60 0 0 {name=x1}
C {devices/code_shown.sym} 470 170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {gnd.sym} 680 20 0 0 {name=l1 lab=0}
C {vsource.sym} 20 25 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 20 70 0 0 {name=l8 lab=0}
C {vdd.sym} 20 -30 0 0 {name=l9 lab=VDD}
C {vdd.sym} 670 -120 0 0 {name=l2 lab=VDD}
C {isource.sym} 640 -190 0 0 {name=I0 value=10u}
C {vdd.sym} 640 -230 0 0 {name=l3 lab=VDD}
C {vsource.sym} 90 -55 0 0 {name=V1 value=1.35 savecurrent=false}
C {lab_pin.sym} 90 -180 2 0 {name=p1 sig_type=std_logic lab=VINP}
C {gnd.sym} 90 -10 0 0 {name=l4 lab=0}
C {lab_pin.sym} 250 -150 2 0 {name=p2 sig_type=std_logic lab=VINN}
C {gnd.sym} 250 20 0 0 {name=l5 lab=0}
C {vsource.sym} 130 155 0 0 {name=V4 value="0 ac 0" savecurrent=false}
C {gnd.sym} 130 200 0 0 {name=l10 lab=0}
C {vsource.sym} 210 155 0 0 {name=V5 value="1.35 ac 0" savecurrent=false

}
C {gnd.sym} 210 200 0 0 {name=l11 lab=0}
C {lab_pin.sym} 210 100 0 1 {name=p3 sig_type=std_logic lab=Vicm
}
C {lab_pin.sym} 130 100 0 1 {name=p4 sig_type=std_logic lab=Vid}
C {asrc.sym} 250 -30 0 0 {name=B1 function="v=-v(Vid)/2+v(Vicm)"}
C {lab_pin.sym} 380 -160 2 0 {name=p5 sig_type=std_logic lab=VINP}
C {gnd.sym} 380 10 0 0 {name=l6 lab=0}
C {asrc.sym} 380 -40 0 0 {name=B2 function="v=v(Vid)/2+v(Vicm)"}
C {lab_pin.sym} 570 -90 1 0 {name=p6 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 570 50 2 0 {name=p7 sig_type=std_logic lab=VINN}
C {capa.sym} 980 -40 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 900 -70 1 0 {name=p8 sig_type=std_logic lab=Vout}
C {gnd.sym} 980 -10 0 0 {name=l7 lab=0}
C {code.sym} 1060 -120 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
save @m.x1.xm1.m0[id]
save @m.x1.xm2.m0[id]
let index = 0
compose VICM_vec start=0.8 stop=1.5 step=50m
let Avcm_vec = VICM_vec
let id1_vec = VICM_vec
let id2_vec = VICM_vec
setscale VICM_vec
foreach VICM_val $&VICM_vec
alter V5 $VICM_val
op
let id1_vec[index] = @m.x1.xm1.m0[id]
let id2_vec[index] = @m.x1.xm2.m0[id]
* === COMMON MODE AC ===
alter V4 AC = 0
alter V5 AC = 1
ac dec 10 1 10e9
* === MEASUREMENTS ===
meas ac Av_CM_mag find vmag(VOUT) at=1
let Avcm_vec[index] = Av_CM_mag
let index = index + 1
end
write 5t_ota_tb_dc_cl_ac_ol.raw Avcm_vec id1_vec id2_vec
plot Avcm_vec vs VICM_vec
plot id1_vec id2_vec vs VICM_vec
.endc"}
C {res.sym} 710 90 1 0 {name=R1
value="1 ac=1e12"
footprint=1206
device=resistor
m=1}
C {res.sym} 380 -110 0 0 {name=R4
value="1e12 ac=1"
footprint=1206
device=resistor
m=1}
C {res.sym} 250 -100 0 0 {name=R3
value="1e12 ac=1"
footprint=1206
device=resistor
m=1}
C {res.sym} 90 -130 0 0 {name=R2
value="1 ac=1e12"
footprint=1206
device=resistor
m=1}
