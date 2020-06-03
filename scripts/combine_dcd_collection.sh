#!/usr/bin/env python3
import mdtraj as md
import pathlib

topology_file = "waterless.pdb" # topology file in PDB format or any supported by mdtraj
dcd_glob = "waterless*.dcd" # a glob for traj files in DCD format or any supported by mdtraj
selection = "not water" # selection is anything but water maybe `not water and not ions` is more useful
trajout = "combined.dcd" # not of output file
list_of_traj = []
directory="." # current dir
list_of_traj.extend([str(i.absolute()) for i in pathlib.Path(directory).glob(dcd_glob)])

traj = md.load(list_of_traj, top=topology_file)
topology = traj.topology
atoms_to_keep = topology.select(selection)
traj.restrict_atoms(atoms_to_keep)
traj.save(trajout)
