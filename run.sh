#!/bin/csh
set root="."
set design="design_name"
set site_name="SITE"
set lef="test.lef"
set verilog="test.v"
set sdc="test.sdc"
set lib="test.lib"

#verilog2def
./bin/verilog2def \
-liberty $lib \
-lef $lef \
-verilog $verilog \
-top_module $design \
-units 2000 \
-utilization 50 \
-aspect_ratio 1.0 \
-core_space 2.0 \
-site $site_name \
-def init.def \
-tracks tracks.info

#ioPlacer
./bin/ioPlacer \
-l $lef \
-d init.def \
-o ioplaced.def \
-h 5 \
-v 6 \
-w 1

#RePlAce
./bin/RePlAce \
-bmflag etc \
-lef $lef \
-def ioplaced.def \
-verilog $verilog \
-lib $lib \
-sdc $sdc \
-output . \
-t 1 \
-timing \
-resPerMicron 1.0 \
-capPerMicron 0.1e-15 \
-skipIP \
-plot \
-experi output \
-den 0.7 \
-onlyGP

#MacroPlacer
./bin/fplan \
-verilog $verilog \
-lib $lib
-lef $lef \
-def etc/ioplaced/output/ioplaced_gp.def \
-design $design \
-sdc $sdc \
-output $design \
-globalConfig IP_global.cfg \
-depth 3 \
-westFix 

#PDN
./pdn/src/scripts/apply_pdn PDN.cfg

#endcap / welltap insertion
./bin/tapcell \
-lef $lef \
-def ${design}_post_T8.def \
-outdef floorplan.def \
-rule 120 \
-welltap WELLTAPCELLNAME \
-endcap ENDCAPCELLNAME 







