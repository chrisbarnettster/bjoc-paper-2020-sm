#!/usr/bin/env python3
import mdtraj as md
import pathlib

topology_file = "step3_charmm2omm.pdb" # topology file in PDB format or any supported by mdtraj
dcd_glob = "step*.dcd" # a glob for traj files in DCD format or any supported by mdtraj
selection = "not water" # selection is anything but water maybe `not water and not ions` is more useful
trajout = "combined.dcd" # not of output file
list_of_traj = []
directory="." # current dir
list_of_traj.extend([str(i.absolute()) for i in pathlib.Path(directory).glob(dcd_glob)]) 

for i,t in enumerate(list_of_traj):
    traj = md.load(t, top=topology_file)
    topology = traj.topology
    atoms_to_keep = topology.select(selection)
    traj.restrict_atoms(atoms_to_keep)
    traj.save("waterless_"+str(i)+".dcd")
