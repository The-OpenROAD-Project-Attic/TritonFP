# TritonFP
All tools in Task 8 (Floorplan) are merged in TritonFP. 

### Tool List

- Resizer (verilog2def) (https://github.com/The-OpenROAD-Project/Resizer)
- ioPlacer (https://github.com/The-OpenROAD-Project/ioPlacer)
- RePlAce (https://github.com/The-OpenROAD-Project/RePlAce)
- TritonMacroPlace (https://github.com/The-OpenROAD-Project/TritonMacroPlace)
- PDN (https://github.com/The-OpenROAD-Project/pdn)
- Endcap/Welltap insertion (https://github.com/The-OpenROAD-Project/tapcell)

### How to Build OpenROAD Tools
https://github.com/The-OpenROAD-Project/alpha-release/tree/master/build#creating-builds

run.sh is an example shell script to connect all the tools. The users should compile all the tools and put
the binaries into "bin" directory. (For PDN, use pdn directory.) Also, technology information (lef, lib, tap cell name, endcap cell
name, site name, unit R and C (per micron)) and design
information (verilog, sdc and design name) should be defined properly.

Please refer to README.md for each repository.


