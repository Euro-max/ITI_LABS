v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1090 -400 1890 0 {flags=graph
y1=-60
y2=37
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="dB20(LG); tian_signal db20()"
color=1
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1200 50 2000 450 {flags=graph
y1=25
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="phase(LG); ph(tian_signal)"
color=7
dataset=-1
unitx=1
logx=1
logy=0
}
N 640 -110 640 -100 {lab=0}
N 690 -190 790 -190 {lab=#net1}
N 790 -190 790 -0 {lab=#net1}
N 740 -0 790 0 {lab=#net1}
N 480 0 540 -0 {lab=#net2}
N 480 -140 480 0 {lab=#net2}
N 480 -140 560 -140 {lab=#net2}
N 790 -190 880 -190 {lab=#net1}
N 880 -190 880 -120 {lab=#net1}
N 880 -120 880 -100 {lab=#net1}
N 880 -40 880 -30 {lab=0}
N 250 -255 250 -240 {lab=0}
N 250 -340 250 -310 {lab=VDD}
N 600 -300 600 -260 {lab=#net3}
N 600 -380 600 -360 {lab=VDD}
N 600 -260 600 -250 {lab=#net3}
N 340 -50 340 -20 {lab=0}
N 340 -150 340 -110 {lab=#net4}
N 340 -210 560 -210 {lab=#net5}
C {OTA_sch.sym} 640 -180 0 0 {name=x1}
C {devices/code_shown.sym} 240 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.spice typical
"}
C {/home/ubuntu/LoopGainProbe/loopgainprobe.sym} 640 0 0 1 {name=X999}
C {gnd.sym} 640 -100 0 0 {name=l1 lab=0}
C {capa.sym} 880 -70 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 880 -30 0 0 {name=l2 lab=0}
C {vsource.sym} 250 -285 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 250 -240 0 0 {name=l8 lab=0}
C {vdd.sym} 250 -340 0 0 {name=l9 lab=VDD}
C {vdd.sym} 630 -230 0 0 {name=l3 lab=VDD}
C {isource.sym} 600 -330 0 0 {name=I0 value=10u}
C {vdd.sym} 600 -380 0 0 {name=l4 lab=VDD}
C {vsource.sym} 340 -180 0 0 {name=V1 value="0 ac 0" savecurrent=false}
C {vsource.sym} 340 -80 0 0 {name=V2 value=1.35 savecurrent=false}
C {gnd.sym} 340 -20 0 0 {name=l5 lab=0}
C {code.sym} 750 -380 0 0 {name=s1 only_toplevel=false value=".control
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
write 5t_ota_tb_cl.raw
.endc"
spice_ignore=true}
C {code.sym} 950 -380 0 0 {name=asrc only_toplevel=false value="
.include /home/ubuntu/LoopGainProbe/stb.spi
"
"
spice_ignore=true}
