# Commands

The commands are listed in the order of their execution for a mutation & docking pipeline. 
Heavy-atom coordinate constrained relax in the beginning: 

* rosetta_scripts.<ROSETTARELEASE> -parser:protocol relax_cst.xml -nstruct 10 -s <PDB>.pdb 

Mutate

* rosetta_scripts.<ROSETTARELEASE> -s <PDB>.pdb -parser:protocol Mutate.xml  -parser:script_vars RAS=<RESFILE>.resfile 


Relax of mutants prior to docking: 

* rosetta_scripts.<ROSETTARELEASE> -parser:protocol relax.xml -ex1 -ex2 -nstruct 500 -s <PDB>.pdb 


Docking

* rosetta_scripts.<ROSETTARELEASE> -parser:protocol docking_full.xml -docking:partners A_B -docking:dock_pert 3 8 -docking:dock_mcm_trans_magnitude 0.1 -docking:dock_mcm_rot_magnitude 5.0 -use_input_sc -scorefile docking.fasc -out:suffix _full -s <PDB>.pdb -nstruct 500

CalculateRMSD of two PDBs (e.g. to compare a pdb after a part of a pipeline to the start): 

* rosetta_scripts.<ROSETTARELEASE> -parser:protocol calculateRMSD.xml -parser:script_vars ref=<REFERENCE_PDB>.pdb -s <PDB>.pdb 

If you use any of the commands please contact me, as I am always interested to help, join and get referenced: leoo25@zedat.fu-berlin.de
