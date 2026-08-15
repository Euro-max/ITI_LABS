v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1200 -400 2000 0 {flags=graph
y1=-98.233441
y2=-18.07906
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="AV diff phase ; ph(vod) cph()"
color=5
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1200 -800 2000 -400 {flags=graph
y1=-3.6
y2=50.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=5
node="AV diff DB ; vod db20()"}
B 2 2000 -400 2800 0 {flags=graph
y1=-340
y2=-170
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="AV CM phase ; ph(vocm) cph()"
color=12
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 2000 -800 2800 -400 {flags=graph
y1=-39
y2=-25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="AV CM DB ; vocm db20()"
color=12
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1200 0 2000 400 {flags=graph
y1=9.2
y2=55.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=5
node="CMRR DB; re(cmrr)"}
B 2 1150 -1420 1950 -1020 {flags=graph
y1=1.4e-10
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="12 5"
node="@m.x1.xm3.m0[vds]
@m.x1.xm3.m0[vdsat]"}
B 2 1150 -1820 1950 -1420 {flags=graph
y1=0.013
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5888427
x2=1.6511573
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="5 12"
node="@m.x1.xm1.m0[vdsat]
@m.x1.xm1.m0[vds]"}
N 660 -240 770 -240 {lab=VOUTN}
N 660 -260 770 -260 {lab=VOUTP}
N 770 -240 830 -240 {lab=VOUTN}
N 770 -260 830 -260 {lab=VOUTP}
N 770 -180 770 -170 {lab=0}
N 770 -330 770 -320 {lab=0}
N 595 -175 595 -165 {lab=0}
N 595 -200 595 -175 {lab=0}
N 540 -180 540 -140 {lab=#net1}
N 540 -80 540 -65 {lab=0}
N 590 -330 590 -300 {lab=VDD}
N 385 -225 520 -225 {lab=VINN}
N 385 -225 385 -180 {lab=VINN}
N 320 -280 320 -240 {lab=VINP}
N 320 -280 520 -280 {lab=VINP}
N 385 -120 385 -105 {lab=0}
N 320 -180 320 -165 {lab=0}
N 110 -225 110 -210 {lab=0}
N 110 -310 110 -280 {lab=VDD}
N 110 -85 110 -70 {lab=0}
N 110 -170 110 -140 {lab=Vid}
N 190 -85 190 -70 {lab=0}
N 190 -170 190 -140 {lab=Vicm}
N 915 -185 915 -140 {lab=VODIFF}
N 915 -80 915 -65 {lab=0}
N 915 -345 915 -300 {lab=VOCM}
N 915 -240 915 -225 {lab=0}
N 570 -190 570 -150 {lab=#net2}
N 570 -20 570 -5 {lab=0}
N 570 -150 570 -80 {lab=#net2}
C {Diff_pair.sym} 300 -250 0 0 {name=x1 WP1=45.2u LP1=1.1u WP2=44u LP2=0.35u RD=27.5k}
C {capa.sym} 770 -210 0 0 {name=C1
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 770 -290 2 0 {name=C2
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 830 -240 0 1 {name=p1 sig_type=std_logic lab=VOUTN}
C {lab_pin.sym} 830 -260 0 1 {name=p2 sig_type=std_logic lab=VOUTP
}
C {gnd.sym} 770 -170 0 0 {name=l2 lab=0}
C {gnd.sym} 770 -330 2 0 {name=l1 lab=0}
C {gnd.sym} 595 -165 0 0 {name=l3 lab=0}
C {isource.sym} 540 -110 0 0 {name=I0 value=\{IB\}
}
C {gnd.sym} 540 -65 0 0 {name=l4 lab=0}
C {vdd.sym} 590 -330 0 0 {name=l6 lab=VDD}
C {gnd.sym} 385 -105 0 0 {name=l5 lab=0}
C {gnd.sym} 320 -165 0 0 {name=l7 lab=0}
C {vsource.sym} 110 -255 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 110 -210 0 0 {name=l8 lab=0}
C {vdd.sym} 110 -310 0 0 {name=l9 lab=VDD}
C {vsource.sym} 110 -115 0 0 {name=V4 value="dc 0 ac 0" savecurrent=false}
C {gnd.sym} 110 -70 0 0 {name=l10 lab=0}
C {vsource.sym} 190 -115 0 0 {name=V5 value="dc \{VICM_DC\} ac 0" savecurrent=false

}
C {gnd.sym} 190 -70 0 0 {name=l11 lab=0}
C {lab_pin.sym} 190 -170 0 1 {name=p3 sig_type=std_logic lab=Vicm
}
C {lab_pin.sym} 110 -170 0 1 {name=p4 sig_type=std_logic lab=Vid}
C {lab_pin.sym} 430 -225 0 1 {name=p5 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 415 -280 0 1 {name=p6 sig_type=std_logic lab=VINP}
C {asrc.sym} 320 -210 0 0 {name=B1 function="v=v(Vid)/2+v(Vicm)"}
C {asrc.sym} 385 -150 0 0 {name=B2 function="v=-v(Vid)/2+v(Vicm)"}
C {gnd.sym} 915 -65 0 0 {name=l12 lab=0}
C {asrc.sym} 915 -110 0 0 {name=B5 function="v=v(VOUTP)-v(VOUTN)"}
C {gnd.sym} 915 -225 0 0 {name=l13 lab=0}
C {asrc.sym} 915 -270 0 0 {name=B3 function="v=(v(VOUTP)+v(VOUTN))/2"}
C {lab_pin.sym} 915 -180 0 1 {name=p7 sig_type=std_logic lab=VODIFF}
C {lab_pin.sym} 915 -340 0 1 {name=p8 sig_type=std_logic lab=VOCM}
C {code.sym} 440 -520 0 0 {name=OP_AC_SS only_toplevel=false value="
.param IB=20u CL=1p VICM_DC=\{1.8-0.5-0.94\}
.control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all

let x = 1
set num = \{$&x\}
dowhile x <= 7
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
let x = x + 1
set num = \{$&x\}
end

* === OP Point ===
op
write diff_amp_tb_op_ac.raw
set appendwrite
echo \\" === MOSFET Operating Points ===\\"
show m : id : vgs : vds : vth : vdsat : gm : gds : gmbs
echo \\" === Bias Points ===\\"
let x = 1
dowhile x <= 7
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
let vod = ac1.v(VODIFF)
let vocm = ac2.v(VOCM)
let CMRR = vdb(vod) - vdb(vocm)

* === MEASUREMENTS ===
meas ac Av_diff_db find vdb(vod) at=1
meas ac Av_diff_mag find vmag(vod) at=1
let A3db = Av_diff_mag/sqrt(2)
meas ac BW_diff when vmag(vod)=A3db fall=1

meas ac Av_CM_db find vdb(vocm) at=1
meas ac Av_CM_mag find vmag(vocm) at=1
let A3db_cm = Av_CM_mag/sqrt(2)
meas ac BW_CM when vmag(vocm)=A3db_cm fall=1

let CMRR_db = Av_diff_db - Av_CM_db

* === DISPLAY RESULTS ===
echo \\" === AC Results ===\\"
echo \\"Av Diff: $&Av_diff_db dB, BW: $&BW_diff Hz\\"
echo \\"Av CM: $&Av_CM_db dB, BW: $&BW_CM Hz\\"
echo \\"CMRR: $&CMRR_db dB\\"
write diff_amp_tb_op_ac.raw
.endc
"}
C {code.sym} 300 -520 0 0 {name=DIFF_LS only_toplevel=false value="
.param IB=20u CL=1p VICM_DC=\{1.8-0.3-0.94\}
.control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
* === DIFFERENTIAL LARGE SIGNAL ===
dc V4 -1.8 1.8 10m
* === EXTRACT EXTREME VALUES ===
let Vmax = maximum(VODIFF)
let Vmin = minimum(VODIFF)
* === DISPLAY RESULTS ===
echo \\"Diff Large Signal Analysis Results:\\"
echo \\"Max Output: $&Vmax V\\"
echo \\"Min Output: $&Vmin V\\"
write diff_amp_tb_dc_diff.raw
.endc
"
spice_ignore=true}
C {code.sym} 150 -520 0 0 {name=CM_LS only_toplevel=false value="
.param IB=20u CL=1p VICM_DC=\{1.8-0.3-0.94\}
.control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let x = 1
set num = \{$&x\}
dowhile x <= 4
save @m.x1.xm\{$num\}.m0[vds]
save @m.x1.xm\{$num\}.m0[vdsat]
let x = x + 1
set num = \{$&x\}
end
* === CM LARGE SIGNAL ===
dc V5 -1 1.8 10m
write diff_amp_tb_dc_cm.raw
.endc
"
spice_ignore=true}
C {code.sym} 10 -520 0 0 {name=CMIR
only_toplevel=false
value="
.param IB=20u CL=1p
.control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all

let index = 0
compose VICM_vec start=-1 stop=1.8 step=50m
let Avd_vec = VICM_vec
setscale VICM_vec

foreach VICM_val $&VICM_vec
    alter V5 dc=$VICM_val
    ac dec 1 1 10
    meas ac Avd MAX vmag(vodiff) FROM=1 TO=10
    let Avd_vec[index] = Avd
    let index = index + 1
end

write diff_amp_tb_cmir.raw Avd_vec
plot Avd_vec vs VICM_vec
.endc
"
spice_ignore=true}
C {isource.sym} 570 -50 0 0 {name=I1 value=\{IB\}
}
C {gnd.sym} 570 -5 0 0 {name=l14 lab=0}
C {devices/code_shown.sym} 590 50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
