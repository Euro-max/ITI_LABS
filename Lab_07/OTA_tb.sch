v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 630 -760 1430 -360 {flags=graph
y1=-69
y2=37
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="Av Diff db; vod db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 670 -230 1470 170 {flags=graph
y1=-150
y2=-0.00074
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="Av Diff Phase; ph(vod) cph()"
color=12
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 670 240 1470 640 {flags=graph
y1=0.58
y2=86
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="CMRR db; cmrr"
color=11
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1590 -800 2390 -400 {flags=graph
y1=-84
y2=-49
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="Av CM dB; vocm db20()"
color=1
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1630 -250 2430 150 {flags=graph
y1=43
y2=250
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="Av CM phase;ph(vocm) cph()"
color=8
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 2560 -780 3360 -380 {flags=graph
y1=0.0002
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=vout
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2560 -270 3360 130 {flags=graph
y1=-1.7e-09
y2=66
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.7800247
x2=1.8199753
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=1
node="vout deriv()"}
N -190 -385 -190 -370 {lab=0}
N -190 -470 -190 -440 {lab=VDD}
N -190 -245 -190 -230 {lab=0}
N -190 -330 -190 -300 {lab=Vid}
N -110 -245 -110 -230 {lab=0}
N -110 -330 -110 -300 {lab=Vicm}
N 380 -250 380 -220 {lab=0}
N 370 -400 370 -370 {lab=VDD}
N 340 -430 340 -390 {lab=#net1}
N 340 -510 340 -490 {lab=VDD}
N 430 -330 530 -330 {lab=VOUT}
N 540 -330 540 -310 {lab=VOUT}
N 530 -330 540 -330 {lab=VOUT}
N 100 -350 300 -350 {lab=VINP}
N 170 -280 300 -280 {lab=VINN}
N 100 -290 100 -270 {lab=0}
N 170 -220 170 -200 {lab=0}
C {OTA_sch.sym} 380 -320 0 0 {name=x1}
C {vsource.sym} -190 -415 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -190 -370 0 0 {name=l8 lab=0}
C {vdd.sym} -190 -470 0 0 {name=l9 lab=VDD}
C {vsource.sym} -190 -275 0 0 {name=V4 value="dc 0 ac 0" savecurrent=false}
C {gnd.sym} -190 -230 0 0 {name=l10 lab=0}
C {vsource.sym} -110 -275 0 0 {name=V5 value="dc 1.35 ac 0" savecurrent=false

}
C {gnd.sym} -110 -230 0 0 {name=l11 lab=0}
C {lab_pin.sym} -110 -330 0 1 {name=p3 sig_type=std_logic lab=Vicm
}
C {lab_pin.sym} -190 -330 0 1 {name=p4 sig_type=std_logic lab=Vid}
C {gnd.sym} 380 -220 0 0 {name=l1 lab=0}
C {vdd.sym} 370 -400 0 0 {name=l2 lab=VDD}
C {isource.sym} 340 -460 0 0 {name=I0 value=10u}
C {vdd.sym} 340 -510 0 0 {name=l3 lab=VDD}
C {capa.sym} 540 -280 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 500 -330 1 0 {name=p1 sig_type=std_logic lab=VOUT}
C {gnd.sym} 540 -250 0 0 {name=l4 lab=0}
C {asrc.sym} 100 -320 0 0 {name=B1 function="v=v(Vid)/2+v(Vicm)"}
C {asrc.sym} 170 -250 0 0 {name=B2 function="v=-v(Vid)/2+v(Vicm)"}
C {gnd.sym} 100 -270 0 0 {name=l5 lab=0}
C {gnd.sym} 170 -200 0 0 {name=l6 lab=0}
C {lab_pin.sym} 230 -350 1 0 {name=p2 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 240 -280 1 0 {name=p5 sig_type=std_logic lab=VINN}
C {devices/code_shown.sym} -180 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {code.sym} -390 -610 0 0 {name=s1 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let x = 1
set num = \{$&x\}
dowhile x <= 6
save @m.x1.xm\{$num\}.m0[id]
save @m.x1.xm\{$num\}.m0[vgs]
save @m.x1.xm\{$num\}.m0[vds]
save @m.x1.xm\{$num\}.m0[vdsat]
save @m.x1.xm\{$num\}.m0[vth]
save @m.x1.xm\{$num\}.m0[gm]
save @m.x1.xm\{$num\}.m0[gds]
save @m.x1.xm\{$num\}.m0[gmbs]
save @m.x1.xm\{$num\}.m0[cgg]
save @m.x1.xm\{$num\}.m0[cdd]
save @m.x1.xm\{$num\}.m0[css]
save @m.x1.xm\{$num\}.m0[cgd]
save @m.x1.xm\{$num\}.m0[cdb]
let x = x + 1
set num = \{$&x\}
end


* === OP Point ===
op
write 5t_ota_tb_ol.raw
set appendwrite
echo \\" === MOSFET Operating Points ===\\"
show m : id : vgs : vds : vth : vdsat : gm : gds : gmbs
echo \\" === Bias Points ===\\"
let x = 1
dowhile x <= 6
set num = \{$&x\}
let gmid = @m.x1.xm\{$num\}.m0[gm]/@m.x1.xm\{$num\}.m0[id]
let Vstar = 2/gmid
echo \\"M\{$num\}: gm/id = $&gmid S/A, Vstar = $&Vstar V\\"
let x = x + 1
end
* === DIFFERENTIAL AC ===
alter V4 AC = 1
alter V5 AC = 0
ac dec 10 1 10e9
* === COMMON MODE AC ===
alter V4 AC = 0
alter V5 AC = 1
ac dec 10 1 10e9
* === EXTRACT RESULTS ===
set units=degrees
let vod = ac1.v(VOUT)
let vocm = ac2.v(VOUT)
let CMRR = vdb(vod) - vdb(vocm)
* === MEASUREMENTS ===
meas ac Av_diff_db find vdb(vod) at=1
meas ac Av_diff_mag find vmag(vod) at=1
let A3db = Av_diff_mag/sqrt(2)
meas ac BW_diff when vmag(vod)=A3db fall=1
meas ac UGF when vmag(vod)=1 fall=1
meas ac P_UGF find vp(vod) at=UGF
let GBW = Av_diff_mag * BW_diff
let PM = 180 + P_UGF
meas ac Av_CM_db find vdb(vocm) at=1
meas ac Av_CM_mag find vmag(vocm) at=1
let A3db = Av_CM_mag/sqrt(2)
meas ac BW_CM when vmag(vocm)=A3db fall=1
let CMRR_db = Av_diff_db - Av_CM_db


* === DISPLAY RESULTS ===
echo \\" === AC Results ===\\"
echo \\"Av Diff: $&Av_diff_db dB, BW: $&BW_diff Hz\\"
echo \\"UGF: $&UGF Hz\\"
echo \\"GBW: $&GBW Hz\\"
echo \\"PM: $&PM deg\\"
echo \\"Av CM: $&Av_CM_db dB, BW: $&BW_CM Hz\\"
echo \\"CMRR: $&CMRR_db dB\\"
write 5t_ota_tb_ol.raw
.endc"
}
C {code.sym} 110 30 0 0 {name=s2 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let index = 0
compose VICM_vec start=1.2 stop=1.5 step=50m
let GBW_vec = VICM_vec
let Avcm_vec = VICM_vec
setscale VICM_vec
foreach VICM_val $&VICM_vec
alter V5 DC=$VICM_val
* === COMMON MODE AC ===
alter V4 AC = 0
alter V5 AC = 1
ac dec 10 1 10e9
* === MEASUREMENTS ===
meas ac Av_CM_mag find vmag(VOUT) at=1
let Avcm_vec[index] = Av_CM_mag
let index = index + 1
end
write 5t_ota_tb_ol.raw Avcm_vec


plot Avcm_vec vs VICM_vec
write 5t_ota_tb_cmir_ac.raw
.endc"
spice_ignore=true}
C {code.sym} 210 290 0 0 {name=s3 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
* === DIFFERENTIAL LARGE SIGNAL ===
dc V4 -1.8 1.8 10m
* === EXTRACT EXTREME VALUES ===
let Vmax = maximum(VOUT)
let Vmin = minimum(VOUT)
* === DISPLAY RESULTS ===
echo \\"Diff Large Signal Analysis Results:\\"
echo \\"Max Output: $&Vmax V\\"
echo \\"Min Output: $&Vmin V\\"
write 5t_ota_tb_ol.raw
.endc"
spice_ignore=true}
C {code.sym} 420 -20 0 0 {name=s4 only_toplevel=false value=".control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let index = 0
compose VICM_vec start=0 stop=1.8 step=50m
let GBW_vec = VICM_vec
setscale VICM_vec
foreach VICM_val $&VICM_vec
alter V5 DC=$VICM_val
* === DIFFERENTIAL AC ===
alter V4 AC = 1
alter V5 AC = 0
ac dec 10 1 10e9
* === MEASUREMENTS ===
meas ac Av_diff_mag find vmag(VOUT) at=1
let A3db = Av_diff_mag/sqrt(2)
meas ac BW_diff when vmag(VOUT)=A3db fall=1
let GBW = Av_diff_mag * BW_diff
let GBW_vec[index] = GBW
let index = index + 1
end
write 5t_ota_tb_ol.raw GBW_vec
plot GBW_vec vs VICM_vec
.endc"
spice_ignore=true}
