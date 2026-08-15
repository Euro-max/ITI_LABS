v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 695 -52.5 1260 227.5 {flags=graph
y1=-340
y2=-170
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="ph(vocm) cph()"
color=5
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/lab_06_ac_cm.raw
hilight_wave=-1}
N -337.5 -127.5 -337.5 -97.5 {lab=VDD}
N -337.5 -37.5 -337.5 2.5 {lab=0}
N 182.5 -257.5 182.5 -237.5 {lab=VDD}
N -277.5 -167.5 -277.5 -147.5 {lab=0}
N -237.5 -17.5 -237.5 2.5 {lab=0}
N -237.5 -97.5 -237.5 -77.5 {lab=VICM}
N -277.5 -257.5 -277.5 -227.5 {lab=VIDIFF}
N -117.5 -87.5 -117.5 -57.5 {lab=0}
N -47.5 -7.5 -47.5 12.5 {lab=0}
N -47.5 -107.5 -47.5 -67.5 {lab=#net1}
N 132.5 72.5 132.5 92.5 {lab=0}
N 262.5 -107.5 392.5 -107.5 {lab=VOUTN}
N 262.5 -167.5 392.5 -167.5 {lab=VOUTP}
N 362.5 -187.5 362.5 -167.5 {lab=VOUTP}
N 362.5 -107.5 362.5 -67.5 {lab=VOUTN}
N 362.5 -277.5 362.5 -247.5 {lab=0}
N 362.5 -7.5 362.5 12.5 {lab=0}
N 522.5 -97.5 522.5 -77.5 {lab=0}
N 522.5 -77.5 522.5 -67.5 {lab=0}
N 512.5 72.5 512.5 92.5 {lab=0}
N 512.5 -17.5 512.5 12.5 {lab=VOCM}
N 522.5 -197.5 522.5 -157.5 {lab=VODIFF}
N 182.5 -237.5 182.5 -207.5 {lab=VDD}
N 182.5 -67.5 182.5 -17.5 {lab=0}
N 132.5 -37.5 132.5 12.5 {lab=#net2}
N 232.5 -167.5 262.5 -167.5 {lab=VOUTP}
N 232.5 -107.5 262.5 -107.5 {lab=VOUTN}
N -47.5 -117.5 112.5 -117.5 {lab=#net1}
N -47.5 -117.5 -47.5 -107.5 {lab=#net1}
N -117.5 -157.5 112.5 -157.5 {lab=#net3}
N -117.5 -157.5 -117.5 -147.5 {lab=#net3}
C {vsource.sym} -337.5 -67.5 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -237.5 -47.5 0 0 {name=V4 value="DC 0.559 AC 1" savecurrent=false}
C {vsource.sym} -277.5 -197.5 0 0 {name=V2 value="DC 0 AC 0" savecurrent=false}
C {vdd.sym} -337.5 -127.5 0 0 {name=l1 lab=VDD}
C {gnd.sym} -337.5 2.5 0 0 {name=l2 lab=0}
C {gnd.sym} 182.5 -17.5 0 0 {name=l3 lab=0}
C {gnd.sym} -237.5 2.5 0 0 {name=l4 lab=0}
C {gnd.sym} -277.5 -147.5 0 0 {name=l5 lab=0}
C {vdd.sym} 182.5 -257.5 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} -277.5 -257.5 0 0 {name=p1 sig_type=std_logic lab=VIDIFF}
C {lab_wire.sym} -237.5 -97.5 0 0 {name=p2 sig_type=std_logic lab=VICM}
C {asrc.sym} -117.5 -117.5 0 0 {name=B1 function="v=v(VICM)+v(VIDIFF)/2"}
C {asrc.sym} -47.5 -37.5 0 0 {name=B2 function="v=v(VICM)-v(VIDIFF)/2"}
C {asrc.sym} 512.5 42.5 0 0 {name=B3 function="v=(v(VOUTP)+v(VOUTN))/2"}
C {asrc.sym} 522.5 -127.5 0 0 {name=B4 function="v=v(VOUTP)-v(VOUTN)"}
C {gnd.sym} -47.5 12.5 0 0 {name=l7 lab=0}
C {gnd.sym} -117.5 -57.5 0 0 {name=l8 lab=0}
C {isource.sym} 132.5 42.5 0 0 {name=I0 value=20u}
C {gnd.sym} 132.5 92.5 0 0 {name=l9 lab=0}
C {capa.sym} 362.5 -37.5 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 362.5 -217.5 2 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 362.5 12.5 0 0 {name=l10 lab=0}
C {gnd.sym} 362.5 -277.5 2 0 {name=l11 lab=0}
C {lab_pin.sym} 392.5 -167.5 2 0 {name=p3 sig_type=std_logic lab=VOUTP}
C {lab_pin.sym} 392.5 -107.5 2 0 {name=p4 sig_type=std_logic lab=VOUTN
}
C {gnd.sym} 512.5 92.5 0 0 {name=l12 lab=0}
C {gnd.sym} 522.5 -67.5 0 0 {name=l13 lab=0}
C {lab_pin.sym} 522.5 -187.5 0 0 {name=p5 sig_type=std_logic lab=VODIFF}
C {lab_pin.sym} 512.5 -7.5 0 0 {name=p6 sig_type=std_logic lab=VOCM}
C {devices/code_shown.sym} -397.5 102.5 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {DIFFPAIR.sym} 262.5 -137.5 0 0 {name=x1 WP1=40.32u LP1=810.8n WP2=30u LP2=350n RD=30K}
C {code.sym} 67.5 160 0 0 {name=OP only_toplevel=false value="

.control
alterparam sw_stat_global = 0
alterparam sw_stat_mismatch = 0
reset
save all
let x = 1
set num = \{$&x\}
dowhile x <= 4
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
write lab_06.raw
set appendwrite
echo \\" === MOSFET Operating Points ===\\"
show m : id : vgs : vds : vth : vdsat : gm : gds : gmbs
echo \\" === Bias Points ===\\"
let x = 1
dowhile x <= 4
set num = \{$&x\}
let gmid = @m.x1.xm\{$num\}.m0[gm]/@m.x1.xm\{$num\}.m0[id]
let Vstar = 2/gmid
echo \\"M\{$num\}: gm/id = $&gmid S/A, Vstar = $&Vstar V\\"
let x = x + 1
end
* === DIFFERENTIAL AC ===
alter V2 AC = 1
alter V4 AC = 0
ac dec 10 1 10e9
write lab_06_ac_diff.raw
write lab_06.raw
* === COMMON MODE AC ===
alter V2 AC = 0
alter V4 AC = 1
ac dec 10 1 10e9
write lab_06_ac_cm.raw
write lab_06.raw
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
let A3db = Av_CM_mag/sqrt(2)
meas ac BW_CM when vmag(vocm)=A3db fall=1
let CMRR_db = Av_diff_db - Av_CM_db
* === DISPLAY RESULTS ===
echo \\" === AC Results ===\\"
echo \\"Av Diff: $&Av_diff_db dB, BW: $&BW_diff Hz\\"
echo \\"Av CM: $&Av_CM_db dB, BW: $&BW_CM Hz\\"
echo \\"CMRR: $&CMRR_db dB\\"
write lab_06.raw
.endc"}
