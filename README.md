# TritonFP
All tools in Task 8 (Floorplan) are merged in TritonFP. 

Tool List

- Resizer (verilog2def) (https://github.com/The-OpenROAD-Project/Resizer/blob/master/README.md)
- ioPlacer (https://github.com/The-OpenROAD-Project/ioPlacer/blob/master/README.md)
- TritonMacroPlace (https://github.com/The-OpenROAD-Project/TritonMacroPlace/blob/master/README.md)
- PDN (https://github.com/The-OpenROAD-Project/pdn/blob/723effcb243e45a710a663e1ebe9628c0df7ac75/doc/README.md)
- Endcap/Welltap insertion (https://github.com/The-OpenROAD-Project/tapcell/blob/master/README.md)

## How to Build OpenROAD tools
https://github.com/The-OpenROAD-Project/alpha-release/tree/master/build#creating-builds

run.sh is an example shell script to connect all the tools. The users should compile all the tools and put
the binaries into "bin" directory. (For PDN, use pdn directory.) Also, technology information (lef, lib, tap cell name, endcap cell
name and site name) and design
information (verilog, sdc and design name) should be defined properly.

Please refer to README.md for each repository.


